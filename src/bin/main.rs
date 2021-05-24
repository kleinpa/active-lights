use chrono::prelude::*;
use clap::Clap;
use log::{info, warn};
use tokio::time;

#[derive(Copy, Clone)]
struct Color {
    brightness: f64,
    x: f64,
    y: f64,
}

fn cct_to_xy(cct: f64) -> (f64, f64) {
    // from https://github.com/colour-science/colour/blob/develop/colour/temperature/cie_d.py
    if cct < 4000.0 || cct > 25000.0 {
        warn!("correlated colour temperature must be in domain [4000, 25000], unpredictable results may occur!");
    }

    let cct3 = cct.powi(3);
    let cct2 = cct.powi(2);

    let x = if cct <= 7000.0 {
        -4.607 * 10_f64.powi(9) / cct3
            + 2.9678 * 10_f64.powi(6) / cct2
            + 0.09911 * 10_f64.powi(3) / cct
            + 0.244063
    } else {
        -2.0064 * 10_f64.powi(9) / cct3
            + 1.9018 * 10_f64.powi(6) / cct2
            + 0.24748 * 10_f64.powi(3) / cct
            + 0.23704
    };

    let y = -3.000 * x.powi(2) + 2.870 * x - 0.275;

    (x, y)
}

fn cct_to_color(cct: f64, brightness: f64) -> Color {
    let xy = cct_to_xy(cct);
    Color {
        brightness: brightness,
        x: xy.0,
        y: xy.1,
    }
}

/// Service control hue lights based on local time.
#[derive(Clap)]
#[clap(version = option_env!("CARGO_PKG_VERSION").unwrap_or(""),
       author = option_env!("CARGO_PKG_AUTHORS").unwrap_or(""))]
struct Opts {
    /// Control the device type used to register this app
    #[clap(short, long, default_value = "activelights")]
    devicetype: String,

    /// Longitude used to calculate local conditions
    #[clap(long, name = "lat", default_value = "42.36")]
    latitude: f64,

    /// Longitude used to calculate local conditions
    #[clap(long, name = "lon", default_value = "-71.05")]
    longitude: f64,

    #[clap(short, long)]
    username: Option<String>,
}

// what's with these lines
pub type Error = Box<dyn std::error::Error + Send + Sync>;
pub type Result<T> = std::result::Result<T, Error>;

fn color_from_time(time: DateTime<Utc>, loc: (f64, f64)) -> Color {
    let sun_map = [
        (-6.0, cct_to_color(2700.0, 80.0)),
        (0.0, cct_to_color(6800.0, 120.0)),
        (7.0, cct_to_color(6100.0, 180.0)),
        (30.0, cct_to_color(6500.0, 255.0)),
    ];
    fn interpolate(a: f64, m: &[(f64, Color)]) -> Color {
        fn between_color(c1: Color, c2: Color, r: f64) -> Color {
            Color {
                brightness: (1.0 - r) * c1.brightness + r * c2.brightness,
                x: (1.0 - r) * c1.x + r * c2.x,
                y: (1.0 - r) * c1.y + r * c2.y,
            }
        }
        match m.iter().position(|&x| x.0 > a) {
            Some(0) => m[0].1,
            Some(i) => between_color(m[i - 1].1, m[i].1, (a - m[i - 1].0) / (m[i].0 - m[i - 1].0)),
            None => m[m.len() - 1].1,
        }
    }

    let pos = sun::pos(time.timestamp_millis(), loc.0, loc.1);
    let altitude = pos.altitude.to_degrees();
    info!("solar angle {}", altitude);
    interpolate(altitude, &sun_map)
}
#[tokio::main]
pub async fn main() -> Result<()> {
    env_logger::init();

    let opts: Opts = Opts::parse();

    let bridge = hueclient::Bridge::discover_required();
    let bridge = match opts.username {
        Some(username) => bridge.with_user(username),
        None => bridge.register_user(&opts.devicetype).unwrap(),
    };
    info!("using bridge {} with user {}", bridge.ip, bridge.username);

    let mut interval = time::interval(time::Duration::from_millis(5000));
    loop {
        interval.tick().await;

        fn cmd_from_color(color: Color) -> hueclient::CommandLight {
            hueclient::CommandLight::default()
                .with_bri(color.brightness as u8)
                .with_xy(color.x as f32, color.y as f32)
        }

        let color = color_from_time(Utc::now(), (opts.latitude, opts.longitude));
        let cmd = cmd_from_color(color);
        info!(
            "setting brightness {} xy {:?}",
            cmd.bri.unwrap(),
            cmd.xy.unwrap(),
        );

        for light in &bridge.get_all_lights().unwrap() {
            bridge.set_light_state(light.id, &cmd).unwrap();
        }
    }
}
