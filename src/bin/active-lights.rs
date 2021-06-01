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

impl From<Color> for hueclient::CommandLight {
    fn from(color: Color) -> hueclient::CommandLight {
        hueclient::CommandLight::default()
            .with_bri(color.brightness as u8)
            .with_xy(color.x as f32, color.y as f32)
    }
}

fn xy_to_color(xy: (f64, f64), brightness: f64) -> Color {
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
    // mapping from sun angle to light level
    let sun_map = [
        (-6.0, xy_to_color((0.44757, 0.40745), 75.0)), // A incandescent / tungsten
        (0.0, xy_to_color((0.34567, 0.35850), 120.0)), // D50 horizon light
        (7.0, xy_to_color((0.34567, 0.35850), 180.0)), // D50 horizon light
        (30.0, xy_to_color((0.33242, 0.34743), 230.0)), // D55 mid-morning / mid-afternoon light
        (60.0, xy_to_color((0.31271, 0.32902), 255.0)), // D65 noon light
    ];
    fn interpolate(a: f64, m: &[(f64, Color)]) -> Color {
        fn mid(c1: Color, c2: Color, r: f64) -> Color {
            Color {
                brightness: (1.0 - r) * c1.brightness + r * c2.brightness,
                x: (1.0 - r) * c1.x + r * c2.x,
                y: (1.0 - r) * c1.y + r * c2.y,
            }
        }
        match m.iter().position(|&x| x.0 > a) {
            Some(0) => m[0].1,
            Some(i) => mid(m[i - 1].1, m[i].1, (a - m[i - 1].0) / (m[i].0 - m[i - 1].0)),
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
        let cmd: hueclient::CommandLight =
            color_from_time(Utc::now(), (opts.latitude, opts.longitude)).into();
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
