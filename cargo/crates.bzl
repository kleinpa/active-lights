"""
@generated
cargo-raze generated Bazel file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def raze_fetch_remote_crates():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "raze__aho_corasick__0_7_18",
        url = "https://crates.io/api/v1/crates/aho-corasick/0.7.18/download",
        type = "tar.gz",
        sha256 = "1e37cfd5e7657ada45f742d6e99ca5788580b5c529dc78faf11ece6dc702656f",
        strip_prefix = "aho-corasick-0.7.18",
        build_file = Label("//cargo/remote:BUILD.aho-corasick-0.7.18.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__atty__0_2_14",
        url = "https://crates.io/api/v1/crates/atty/0.2.14/download",
        type = "tar.gz",
        sha256 = "d9b39be18770d11421cdb1b9947a45dd3f37e93092cbf377614828a319d5fee8",
        strip_prefix = "atty-0.2.14",
        build_file = Label("//cargo/remote:BUILD.atty-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__autocfg__1_0_1",
        url = "https://crates.io/api/v1/crates/autocfg/1.0.1/download",
        type = "tar.gz",
        sha256 = "cdb031dd78e28731d87d56cc8ffef4a8f36ca26c38fe2de700543e627f8a464a",
        strip_prefix = "autocfg-1.0.1",
        build_file = Label("//cargo/remote:BUILD.autocfg-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__base64__0_12_3",
        url = "https://crates.io/api/v1/crates/base64/0.12.3/download",
        type = "tar.gz",
        sha256 = "3441f0f7b02788e948e47f457ca01f1d7e6d92c693bc132c22b087d3141c03ff",
        strip_prefix = "base64-0.12.3",
        build_file = Label("//cargo/remote:BUILD.base64-0.12.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__base64__0_13_0",
        url = "https://crates.io/api/v1/crates/base64/0.13.0/download",
        type = "tar.gz",
        sha256 = "904dfeac50f3cdaba28fc6f57fdcddb75f49ed61346676a78c4ffe55877802fd",
        strip_prefix = "base64-0.13.0",
        build_file = Label("//cargo/remote:BUILD.base64-0.13.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bitflags__1_2_1",
        url = "https://crates.io/api/v1/crates/bitflags/1.2.1/download",
        type = "tar.gz",
        sha256 = "cf1de2fe8c75bc145a2f577add951f8134889b4795d47466a54a5c846d691693",
        strip_prefix = "bitflags-1.2.1",
        build_file = Label("//cargo/remote:BUILD.bitflags-1.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bumpalo__3_6_1",
        url = "https://crates.io/api/v1/crates/bumpalo/3.6.1/download",
        type = "tar.gz",
        sha256 = "63396b8a4b9de3f4fdfb320ab6080762242f66a8ef174c49d8e19b674db4cdbe",
        strip_prefix = "bumpalo-3.6.1",
        build_file = Label("//cargo/remote:BUILD.bumpalo-3.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bytes__0_5_6",
        url = "https://crates.io/api/v1/crates/bytes/0.5.6/download",
        type = "tar.gz",
        sha256 = "0e4cec68f03f32e44924783795810fa50a7035d8c8ebe78580ad7e6c703fba38",
        strip_prefix = "bytes-0.5.6",
        build_file = Label("//cargo/remote:BUILD.bytes-0.5.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bytes__1_0_1",
        url = "https://crates.io/api/v1/crates/bytes/1.0.1/download",
        type = "tar.gz",
        sha256 = "b700ce4376041dcd0a327fd0097c41095743c4c8af8887265942faf1100bd040",
        strip_prefix = "bytes-1.0.1",
        build_file = Label("//cargo/remote:BUILD.bytes-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cc__1_0_67",
        url = "https://crates.io/api/v1/crates/cc/1.0.67/download",
        type = "tar.gz",
        sha256 = "e3c69b077ad434294d3ce9f1f6143a2a4b89a8a2d54ef813d85003a4fd1137fd",
        strip_prefix = "cc-1.0.67",
        build_file = Label("//cargo/remote:BUILD.cc-1.0.67.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cfg_if__0_1_10",
        url = "https://crates.io/api/v1/crates/cfg-if/0.1.10/download",
        type = "tar.gz",
        sha256 = "4785bdd1c96b2a846b2bd7cc02e86b6b3dbf14e7e53446c4f54c92a361040822",
        strip_prefix = "cfg-if-0.1.10",
        build_file = Label("//cargo/remote:BUILD.cfg-if-0.1.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cfg_if__1_0_0",
        url = "https://crates.io/api/v1/crates/cfg-if/1.0.0/download",
        type = "tar.gz",
        sha256 = "baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd",
        strip_prefix = "cfg-if-1.0.0",
        build_file = Label("//cargo/remote:BUILD.cfg-if-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__chrono__0_4_19",
        url = "https://crates.io/api/v1/crates/chrono/0.4.19/download",
        type = "tar.gz",
        sha256 = "670ad68c9088c2a963aaa298cb369688cf3f9465ce5e2d4ca10e6e0098a1ce73",
        strip_prefix = "chrono-0.4.19",
        build_file = Label("//cargo/remote:BUILD.chrono-0.4.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__clap__3_0_0_beta_2",
        url = "https://crates.io/api/v1/crates/clap/3.0.0-beta.2/download",
        type = "tar.gz",
        sha256 = "4bd1061998a501ee7d4b6d449020df3266ca3124b941ec56cf2005c3779ca142",
        strip_prefix = "clap-3.0.0-beta.2",
        build_file = Label("//cargo/remote:BUILD.clap-3.0.0-beta.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__clap_derive__3_0_0_beta_2",
        url = "https://crates.io/api/v1/crates/clap_derive/3.0.0-beta.2/download",
        type = "tar.gz",
        sha256 = "370f715b81112975b1b69db93e0b56ea4cd4e5002ac43b2da8474106a54096a1",
        strip_prefix = "clap_derive-3.0.0-beta.2",
        build_file = Label("//cargo/remote:BUILD.clap_derive-3.0.0-beta.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__encoding_rs__0_8_28",
        url = "https://crates.io/api/v1/crates/encoding_rs/0.8.28/download",
        type = "tar.gz",
        sha256 = "80df024fbc5ac80f87dfef0d9f5209a252f2a497f7f42944cff24d8253cac065",
        strip_prefix = "encoding_rs-0.8.28",
        build_file = Label("//cargo/remote:BUILD.encoding_rs-0.8.28.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__env_logger__0_8_3",
        url = "https://crates.io/api/v1/crates/env_logger/0.8.3/download",
        type = "tar.gz",
        sha256 = "17392a012ea30ef05a610aa97dfb49496e71c9f676b27879922ea5bdf60d9d3f",
        strip_prefix = "env_logger-0.8.3",
        build_file = Label("//cargo/remote:BUILD.env_logger-0.8.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fnv__1_0_7",
        url = "https://crates.io/api/v1/crates/fnv/1.0.7/download",
        type = "tar.gz",
        sha256 = "3f9eec918d3f24069decb9af1554cad7c880e2da24a9afd88aca000531ab82c1",
        strip_prefix = "fnv-1.0.7",
        build_file = Label("//cargo/remote:BUILD.fnv-1.0.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__form_urlencoded__1_0_1",
        url = "https://crates.io/api/v1/crates/form_urlencoded/1.0.1/download",
        type = "tar.gz",
        sha256 = "5fc25a87fa4fd2094bffb06925852034d90a17f0d1e05197d4956d3555752191",
        strip_prefix = "form_urlencoded-1.0.1",
        build_file = Label("//cargo/remote:BUILD.form_urlencoded-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fuchsia_zircon__0_3_3",
        url = "https://crates.io/api/v1/crates/fuchsia-zircon/0.3.3/download",
        type = "tar.gz",
        sha256 = "2e9763c69ebaae630ba35f74888db465e49e259ba1bc0eda7d06f4a067615d82",
        strip_prefix = "fuchsia-zircon-0.3.3",
        build_file = Label("//cargo/remote:BUILD.fuchsia-zircon-0.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fuchsia_zircon_sys__0_3_3",
        url = "https://crates.io/api/v1/crates/fuchsia-zircon-sys/0.3.3/download",
        type = "tar.gz",
        sha256 = "3dcaa9ae7725d12cdb85b3ad99a434db70b468c09ded17e012d86b5c1010f7a7",
        strip_prefix = "fuchsia-zircon-sys-0.3.3",
        build_file = Label("//cargo/remote:BUILD.fuchsia-zircon-sys-0.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_channel__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-channel/0.3.15/download",
        type = "tar.gz",
        sha256 = "e682a68b29a882df0545c143dc3646daefe80ba479bcdede94d5a703de2871e2",
        strip_prefix = "futures-channel-0.3.15",
        build_file = Label("//cargo/remote:BUILD.futures-channel-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_core__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-core/0.3.15/download",
        type = "tar.gz",
        sha256 = "0402f765d8a89a26043b889b26ce3c4679d268fa6bb22cd7c6aad98340e179d1",
        strip_prefix = "futures-core-0.3.15",
        build_file = Label("//cargo/remote:BUILD.futures-core-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_io__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-io/0.3.15/download",
        type = "tar.gz",
        sha256 = "acc499defb3b348f8d8f3f66415835a9131856ff7714bf10dadfc4ec4bdb29a1",
        strip_prefix = "futures-io-0.3.15",
        build_file = Label("//cargo/remote:BUILD.futures-io-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_macro__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-macro/0.3.15/download",
        type = "tar.gz",
        sha256 = "a4c40298486cdf52cc00cd6d6987892ba502c7656a16a4192a9992b1ccedd121",
        strip_prefix = "futures-macro-0.3.15",
        build_file = Label("//cargo/remote:BUILD.futures-macro-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_sink__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-sink/0.3.15/download",
        type = "tar.gz",
        sha256 = "a57bead0ceff0d6dde8f465ecd96c9338121bb7717d3e7b108059531870c4282",
        strip_prefix = "futures-sink-0.3.15",
        build_file = Label("//cargo/remote:BUILD.futures-sink-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_task__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-task/0.3.15/download",
        type = "tar.gz",
        sha256 = "8a16bef9fc1a4dddb5bee51c989e3fbba26569cbb0e31f5b303c184e3dd33dae",
        strip_prefix = "futures-task-0.3.15",
        build_file = Label("//cargo/remote:BUILD.futures-task-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_util__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-util/0.3.15/download",
        type = "tar.gz",
        sha256 = "feb5c238d27e2bf94ffdfd27b2c29e3df4a68c4193bb6427384259e2bf191967",
        strip_prefix = "futures-util-0.3.15",
        build_file = Label("//cargo/remote:BUILD.futures-util-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__h2__0_2_7",
        url = "https://crates.io/api/v1/crates/h2/0.2.7/download",
        type = "tar.gz",
        sha256 = "5e4728fd124914ad25e99e3d15a9361a879f6620f63cb56bbb08f95abb97a535",
        strip_prefix = "h2-0.2.7",
        build_file = Label("//cargo/remote:BUILD.h2-0.2.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hashbrown__0_9_1",
        url = "https://crates.io/api/v1/crates/hashbrown/0.9.1/download",
        type = "tar.gz",
        sha256 = "d7afe4a420e3fe79967a00898cc1f4db7c8a49a9333a29f8a4bd76a253d5cd04",
        strip_prefix = "hashbrown-0.9.1",
        build_file = Label("//cargo/remote:BUILD.hashbrown-0.9.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__heck__0_3_2",
        url = "https://crates.io/api/v1/crates/heck/0.3.2/download",
        type = "tar.gz",
        sha256 = "87cbf45460356b7deeb5e3415b5563308c0a9b057c85e12b06ad551f98d0a6ac",
        strip_prefix = "heck-0.3.2",
        build_file = Label("//cargo/remote:BUILD.heck-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hermit_abi__0_1_18",
        url = "https://crates.io/api/v1/crates/hermit-abi/0.1.18/download",
        type = "tar.gz",
        sha256 = "322f4de77956e22ed0e5032c359a0f1273f1f7f0d79bfa3b8ffbc730d7fbcc5c",
        strip_prefix = "hermit-abi-0.1.18",
        build_file = Label("//cargo/remote:BUILD.hermit-abi-0.1.18.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__http__0_2_4",
        url = "https://crates.io/api/v1/crates/http/0.2.4/download",
        type = "tar.gz",
        sha256 = "527e8c9ac747e28542699a951517aa9a6945af506cd1f2e1b53a576c17b6cc11",
        strip_prefix = "http-0.2.4",
        build_file = Label("//cargo/remote:BUILD.http-0.2.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__http_body__0_3_1",
        url = "https://crates.io/api/v1/crates/http-body/0.3.1/download",
        type = "tar.gz",
        sha256 = "13d5ff830006f7646652e057693569bfe0d51760c0085a071769d142a205111b",
        strip_prefix = "http-body-0.3.1",
        build_file = Label("//cargo/remote:BUILD.http-body-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__httparse__1_4_1",
        url = "https://crates.io/api/v1/crates/httparse/1.4.1/download",
        type = "tar.gz",
        sha256 = "f3a87b616e37e93c22fb19bcd386f02f3af5ea98a25670ad0fce773de23c5e68",
        strip_prefix = "httparse-1.4.1",
        build_file = Label("//cargo/remote:BUILD.httparse-1.4.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__httpdate__0_3_2",
        url = "https://crates.io/api/v1/crates/httpdate/0.3.2/download",
        type = "tar.gz",
        sha256 = "494b4d60369511e7dea41cf646832512a94e542f68bb9c49e54518e0f468eb47",
        strip_prefix = "httpdate-0.3.2",
        build_file = Label("//cargo/remote:BUILD.httpdate-0.3.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hueclient__0_4_1",
        url = "https://crates.io/api/v1/crates/hueclient/0.4.1/download",
        type = "tar.gz",
        sha256 = "823933a2e61247a08d8df5e623837845b6031828331bb3b4b55f995b8513abfb",
        strip_prefix = "hueclient-0.4.1",
        build_file = Label("//cargo/remote:BUILD.hueclient-0.4.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__humantime__2_1_0",
        url = "https://crates.io/api/v1/crates/humantime/2.1.0/download",
        type = "tar.gz",
        sha256 = "9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4",
        strip_prefix = "humantime-2.1.0",
        build_file = Label("//cargo/remote:BUILD.humantime-2.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hyper__0_13_10",
        url = "https://crates.io/api/v1/crates/hyper/0.13.10/download",
        type = "tar.gz",
        sha256 = "8a6f157065790a3ed2f88679250419b5cdd96e714a0d65f7797fd337186e96bb",
        strip_prefix = "hyper-0.13.10",
        build_file = Label("//cargo/remote:BUILD.hyper-0.13.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hyper_rustls__0_21_0",
        url = "https://crates.io/api/v1/crates/hyper-rustls/0.21.0/download",
        type = "tar.gz",
        sha256 = "37743cc83e8ee85eacfce90f2f4102030d9ff0a95244098d781e9bee4a90abb6",
        strip_prefix = "hyper-rustls-0.21.0",
        build_file = Label("//cargo/remote:BUILD.hyper-rustls-0.21.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__idna__0_2_3",
        url = "https://crates.io/api/v1/crates/idna/0.2.3/download",
        type = "tar.gz",
        sha256 = "418a0a6fab821475f634efe3ccc45c013f742efe03d853e8d3355d5cb850ecf8",
        strip_prefix = "idna-0.2.3",
        build_file = Label("//cargo/remote:BUILD.idna-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__indexmap__1_6_2",
        url = "https://crates.io/api/v1/crates/indexmap/1.6.2/download",
        type = "tar.gz",
        sha256 = "824845a0bf897a9042383849b02c1bc219c2383772efcd5c6f9766fa4b81aef3",
        strip_prefix = "indexmap-1.6.2",
        build_file = Label("//cargo/remote:BUILD.indexmap-1.6.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__instant__0_1_9",
        url = "https://crates.io/api/v1/crates/instant/0.1.9/download",
        type = "tar.gz",
        sha256 = "61124eeebbd69b8190558df225adf7e4caafce0d743919e5d6b19652314ec5ec",
        strip_prefix = "instant-0.1.9",
        build_file = Label("//cargo/remote:BUILD.instant-0.1.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__iovec__0_1_4",
        url = "https://crates.io/api/v1/crates/iovec/0.1.4/download",
        type = "tar.gz",
        sha256 = "b2b3ea6ff95e175473f8ffe6a7eb7c00d054240321b84c57051175fe3c1e075e",
        strip_prefix = "iovec-0.1.4",
        build_file = Label("//cargo/remote:BUILD.iovec-0.1.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ipnet__2_3_0",
        url = "https://crates.io/api/v1/crates/ipnet/2.3.0/download",
        type = "tar.gz",
        sha256 = "47be2f14c678be2fdcab04ab1171db51b2762ce6f0a8ee87c8dd4a04ed216135",
        strip_prefix = "ipnet-2.3.0",
        build_file = Label("//cargo/remote:BUILD.ipnet-2.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__itoa__0_4_7",
        url = "https://crates.io/api/v1/crates/itoa/0.4.7/download",
        type = "tar.gz",
        sha256 = "dd25036021b0de88a0aff6b850051563c6516d0bf53f8638938edbb9de732736",
        strip_prefix = "itoa-0.4.7",
        build_file = Label("//cargo/remote:BUILD.itoa-0.4.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__js_sys__0_3_51",
        url = "https://crates.io/api/v1/crates/js-sys/0.3.51/download",
        type = "tar.gz",
        sha256 = "83bdfbace3a0e81a4253f73b49e960b053e396a11012cbd49b9b74d6a2b67062",
        strip_prefix = "js-sys-0.3.51",
        build_file = Label("//cargo/remote:BUILD.js-sys-0.3.51.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__kernel32_sys__0_2_2",
        url = "https://crates.io/api/v1/crates/kernel32-sys/0.2.2/download",
        type = "tar.gz",
        sha256 = "7507624b29483431c0ba2d82aece8ca6cdba9382bff4ddd0f7490560c056098d",
        strip_prefix = "kernel32-sys-0.2.2",
        build_file = Label("//cargo/remote:BUILD.kernel32-sys-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lazy_static__1_4_0",
        url = "https://crates.io/api/v1/crates/lazy_static/1.4.0/download",
        type = "tar.gz",
        sha256 = "e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//cargo/remote:BUILD.lazy_static-1.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libc__0_2_94",
        url = "https://crates.io/api/v1/crates/libc/0.2.94/download",
        type = "tar.gz",
        sha256 = "18794a8ad5b29321f790b55d93dfba91e125cb1a9edbd4f8e3150acc771c1a5e",
        strip_prefix = "libc-0.2.94",
        build_file = Label("//cargo/remote:BUILD.libc-0.2.94.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lock_api__0_4_4",
        url = "https://crates.io/api/v1/crates/lock_api/0.4.4/download",
        type = "tar.gz",
        sha256 = "0382880606dff6d15c9476c416d18690b72742aa7b605bb6dd6ec9030fbf07eb",
        strip_prefix = "lock_api-0.4.4",
        build_file = Label("//cargo/remote:BUILD.lock_api-0.4.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log__0_4_14",
        url = "https://crates.io/api/v1/crates/log/0.4.14/download",
        type = "tar.gz",
        sha256 = "51b9bbe6c47d51fc3e1a9b945965946b4c44142ab8792c50835a980d362c2710",
        strip_prefix = "log-0.4.14",
        build_file = Label("//cargo/remote:BUILD.log-0.4.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__matches__0_1_8",
        url = "https://crates.io/api/v1/crates/matches/0.1.8/download",
        type = "tar.gz",
        sha256 = "7ffc5c5338469d4d3ea17d269fa8ea3512ad247247c30bd2df69e68309ed0a08",
        strip_prefix = "matches-0.1.8",
        build_file = Label("//cargo/remote:BUILD.matches-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__memchr__2_4_0",
        url = "https://crates.io/api/v1/crates/memchr/2.4.0/download",
        type = "tar.gz",
        sha256 = "b16bd47d9e329435e309c58469fe0791c2d0d1ba96ec0954152a5ae2b04387dc",
        strip_prefix = "memchr-2.4.0",
        build_file = Label("//cargo/remote:BUILD.memchr-2.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mime__0_3_16",
        url = "https://crates.io/api/v1/crates/mime/0.3.16/download",
        type = "tar.gz",
        sha256 = "2a60c7ce501c71e03a9c9c0d35b861413ae925bd979cc7a4e30d060069aaac8d",
        strip_prefix = "mime-0.3.16",
        build_file = Label("//cargo/remote:BUILD.mime-0.3.16.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mime_guess__2_0_3",
        url = "https://crates.io/api/v1/crates/mime_guess/2.0.3/download",
        type = "tar.gz",
        sha256 = "2684d4c2e97d99848d30b324b00c8fcc7e5c897b7cbb5819b09e7c90e8baf212",
        strip_prefix = "mime_guess-2.0.3",
        build_file = Label("//cargo/remote:BUILD.mime_guess-2.0.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mio__0_6_23",
        url = "https://crates.io/api/v1/crates/mio/0.6.23/download",
        type = "tar.gz",
        sha256 = "4afd66f5b91bf2a3bc13fad0e21caedac168ca4c707504e75585648ae80e4cc4",
        strip_prefix = "mio-0.6.23",
        build_file = Label("//cargo/remote:BUILD.mio-0.6.23.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mio__0_7_11",
        url = "https://crates.io/api/v1/crates/mio/0.7.11/download",
        type = "tar.gz",
        sha256 = "cf80d3e903b34e0bd7282b218398aec54e082c840d9baf8339e0080a0c542956",
        strip_prefix = "mio-0.7.11",
        build_file = Label("//cargo/remote:BUILD.mio-0.7.11.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__miow__0_2_2",
        url = "https://crates.io/api/v1/crates/miow/0.2.2/download",
        type = "tar.gz",
        sha256 = "ebd808424166322d4a38da87083bfddd3ac4c131334ed55856112eb06d46944d",
        strip_prefix = "miow-0.2.2",
        build_file = Label("//cargo/remote:BUILD.miow-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__miow__0_3_7",
        url = "https://crates.io/api/v1/crates/miow/0.3.7/download",
        type = "tar.gz",
        sha256 = "b9f1c5b025cda876f66ef43a113f91ebc9f4ccef34843000e0adf6ebbab84e21",
        strip_prefix = "miow-0.3.7",
        build_file = Label("//cargo/remote:BUILD.miow-0.3.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__net2__0_2_37",
        url = "https://crates.io/api/v1/crates/net2/0.2.37/download",
        type = "tar.gz",
        sha256 = "391630d12b68002ae1e25e8f974306474966550ad82dac6886fb8910c19568ae",
        strip_prefix = "net2-0.2.37",
        build_file = Label("//cargo/remote:BUILD.net2-0.2.37.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ntapi__0_3_6",
        url = "https://crates.io/api/v1/crates/ntapi/0.3.6/download",
        type = "tar.gz",
        sha256 = "3f6bb902e437b6d86e03cce10a7e2af662292c5dfef23b65899ea3ac9354ad44",
        strip_prefix = "ntapi-0.3.6",
        build_file = Label("//cargo/remote:BUILD.ntapi-0.3.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_integer__0_1_44",
        url = "https://crates.io/api/v1/crates/num-integer/0.1.44/download",
        type = "tar.gz",
        sha256 = "d2cc698a63b549a70bc047073d2949cce27cd1c7b0a4a862d08a8031bc2801db",
        strip_prefix = "num-integer-0.1.44",
        build_file = Label("//cargo/remote:BUILD.num-integer-0.1.44.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_traits__0_2_14",
        url = "https://crates.io/api/v1/crates/num-traits/0.2.14/download",
        type = "tar.gz",
        sha256 = "9a64b1ec5cda2586e284722486d802acf1f7dbdc623e2bfc57e65ca1cd099290",
        strip_prefix = "num-traits-0.2.14",
        build_file = Label("//cargo/remote:BUILD.num-traits-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_cpus__1_13_0",
        url = "https://crates.io/api/v1/crates/num_cpus/1.13.0/download",
        type = "tar.gz",
        sha256 = "05499f3756671c15885fee9034446956fff3f243d6077b91e5767df161f766b3",
        strip_prefix = "num_cpus-1.13.0",
        build_file = Label("//cargo/remote:BUILD.num_cpus-1.13.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__once_cell__1_7_2",
        url = "https://crates.io/api/v1/crates/once_cell/1.7.2/download",
        type = "tar.gz",
        sha256 = "af8b08b04175473088b46763e51ee54da5f9a164bc162f615b91bc179dbf15a3",
        strip_prefix = "once_cell-1.7.2",
        build_file = Label("//cargo/remote:BUILD.once_cell-1.7.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__os_str_bytes__2_4_0",
        url = "https://crates.io/api/v1/crates/os_str_bytes/2.4.0/download",
        type = "tar.gz",
        sha256 = "afb2e1c3ee07430c2cf76151675e583e0f19985fa6efae47d6848a3e2c824f85",
        strip_prefix = "os_str_bytes-2.4.0",
        build_file = Label("//cargo/remote:BUILD.os_str_bytes-2.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking_lot__0_11_1",
        url = "https://crates.io/api/v1/crates/parking_lot/0.11.1/download",
        type = "tar.gz",
        sha256 = "6d7744ac029df22dca6284efe4e898991d28e3085c706c972bcd7da4a27a15eb",
        strip_prefix = "parking_lot-0.11.1",
        build_file = Label("//cargo/remote:BUILD.parking_lot-0.11.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking_lot_core__0_8_3",
        url = "https://crates.io/api/v1/crates/parking_lot_core/0.8.3/download",
        type = "tar.gz",
        sha256 = "fa7a782938e745763fe6907fc6ba86946d72f49fe7e21de074e08128a99fb018",
        strip_prefix = "parking_lot_core-0.8.3",
        build_file = Label("//cargo/remote:BUILD.parking_lot_core-0.8.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__percent_encoding__2_1_0",
        url = "https://crates.io/api/v1/crates/percent-encoding/2.1.0/download",
        type = "tar.gz",
        sha256 = "d4fd5641d01c8f18a23da7b6fe29298ff4b55afcccdf78973b24cf3175fee32e",
        strip_prefix = "percent-encoding-2.1.0",
        build_file = Label("//cargo/remote:BUILD.percent-encoding-2.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_project__1_0_7",
        url = "https://crates.io/api/v1/crates/pin-project/1.0.7/download",
        type = "tar.gz",
        sha256 = "c7509cc106041c40a4518d2af7a61530e1eed0e6285296a3d8c5472806ccc4a4",
        strip_prefix = "pin-project-1.0.7",
        build_file = Label("//cargo/remote:BUILD.pin-project-1.0.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_project_internal__1_0_7",
        url = "https://crates.io/api/v1/crates/pin-project-internal/1.0.7/download",
        type = "tar.gz",
        sha256 = "48c950132583b500556b1efd71d45b319029f2b71518d979fcc208e16b42426f",
        strip_prefix = "pin-project-internal-1.0.7",
        build_file = Label("//cargo/remote:BUILD.pin-project-internal-1.0.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_project_lite__0_1_12",
        url = "https://crates.io/api/v1/crates/pin-project-lite/0.1.12/download",
        type = "tar.gz",
        sha256 = "257b64915a082f7811703966789728173279bdebb956b143dbcd23f6f970a777",
        strip_prefix = "pin-project-lite-0.1.12",
        build_file = Label("//cargo/remote:BUILD.pin-project-lite-0.1.12.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_project_lite__0_2_6",
        url = "https://crates.io/api/v1/crates/pin-project-lite/0.2.6/download",
        type = "tar.gz",
        sha256 = "dc0e1f259c92177c30a4c9d177246edd0a3568b25756a977d0632cf8fa37e905",
        strip_prefix = "pin-project-lite-0.2.6",
        build_file = Label("//cargo/remote:BUILD.pin-project-lite-0.2.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_utils__0_1_0",
        url = "https://crates.io/api/v1/crates/pin-utils/0.1.0/download",
        type = "tar.gz",
        sha256 = "8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184",
        strip_prefix = "pin-utils-0.1.0",
        build_file = Label("//cargo/remote:BUILD.pin-utils-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_error__1_0_4",
        url = "https://crates.io/api/v1/crates/proc-macro-error/1.0.4/download",
        type = "tar.gz",
        sha256 = "da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c",
        strip_prefix = "proc-macro-error-1.0.4",
        build_file = Label("//cargo/remote:BUILD.proc-macro-error-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_error_attr__1_0_4",
        url = "https://crates.io/api/v1/crates/proc-macro-error-attr/1.0.4/download",
        type = "tar.gz",
        sha256 = "a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869",
        strip_prefix = "proc-macro-error-attr-1.0.4",
        build_file = Label("//cargo/remote:BUILD.proc-macro-error-attr-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_hack__0_5_19",
        url = "https://crates.io/api/v1/crates/proc-macro-hack/0.5.19/download",
        type = "tar.gz",
        sha256 = "dbf0c48bc1d91375ae5c3cd81e3722dff1abcf81a30960240640d223f59fe0e5",
        strip_prefix = "proc-macro-hack-0.5.19",
        build_file = Label("//cargo/remote:BUILD.proc-macro-hack-0.5.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_nested__0_1_7",
        url = "https://crates.io/api/v1/crates/proc-macro-nested/0.1.7/download",
        type = "tar.gz",
        sha256 = "bc881b2c22681370c6a780e47af9840ef841837bc98118431d4e1868bd0c1086",
        strip_prefix = "proc-macro-nested-0.1.7",
        build_file = Label("//cargo/remote:BUILD.proc-macro-nested-0.1.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro2__1_0_27",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.27/download",
        type = "tar.gz",
        sha256 = "f0d8caf72986c1a598726adc988bb5984792ef84f5ee5aa50209145ee8077038",
        strip_prefix = "proc-macro2-1.0.27",
        build_file = Label("//cargo/remote:BUILD.proc-macro2-1.0.27.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__quote__1_0_9",
        url = "https://crates.io/api/v1/crates/quote/1.0.9/download",
        type = "tar.gz",
        sha256 = "c3d0b9745dc2debf507c8422de05d7226cc1f0644216dfdfead988f9b1ab32a7",
        strip_prefix = "quote-1.0.9",
        build_file = Label("//cargo/remote:BUILD.quote-1.0.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__redox_syscall__0_2_8",
        url = "https://crates.io/api/v1/crates/redox_syscall/0.2.8/download",
        type = "tar.gz",
        sha256 = "742739e41cd49414de871ea5e549afb7e2a3ac77b589bcbebe8c82fab37147fc",
        strip_prefix = "redox_syscall-0.2.8",
        build_file = Label("//cargo/remote:BUILD.redox_syscall-0.2.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex__1_5_4",
        url = "https://crates.io/api/v1/crates/regex/1.5.4/download",
        type = "tar.gz",
        sha256 = "d07a8629359eb56f1e2fb1652bb04212c072a87ba68546a04065d525673ac461",
        strip_prefix = "regex-1.5.4",
        build_file = Label("//cargo/remote:BUILD.regex-1.5.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex_syntax__0_6_25",
        url = "https://crates.io/api/v1/crates/regex-syntax/0.6.25/download",
        type = "tar.gz",
        sha256 = "f497285884f3fcff424ffc933e56d7cbca511def0c9831a7f9b5f6153e3cc89b",
        strip_prefix = "regex-syntax-0.6.25",
        build_file = Label("//cargo/remote:BUILD.regex-syntax-0.6.25.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__reqwest__0_10_10",
        url = "https://crates.io/api/v1/crates/reqwest/0.10.10/download",
        type = "tar.gz",
        sha256 = "0718f81a8e14c4dbb3b34cf23dc6aaf9ab8a0dfec160c534b3dbca1aaa21f47c",
        strip_prefix = "reqwest-0.10.10",
        build_file = Label("//cargo/remote:BUILD.reqwest-0.10.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ring__0_16_20",
        url = "https://crates.io/api/v1/crates/ring/0.16.20/download",
        type = "tar.gz",
        sha256 = "3053cf52e236a3ed746dfc745aa9cacf1b791d846bdaf412f60a8d7d6e17c8fc",
        strip_prefix = "ring-0.16.20",
        build_file = Label("//cargo/remote:BUILD.ring-0.16.20.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rustls__0_18_1",
        url = "https://crates.io/api/v1/crates/rustls/0.18.1/download",
        type = "tar.gz",
        sha256 = "5d1126dcf58e93cee7d098dbda643b5f92ed724f1f6a63007c1116eed6700c81",
        strip_prefix = "rustls-0.18.1",
        build_file = Label("//cargo/remote:BUILD.rustls-0.18.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ryu__1_0_5",
        url = "https://crates.io/api/v1/crates/ryu/1.0.5/download",
        type = "tar.gz",
        sha256 = "71d301d4193d031abdd79ff7e3dd721168a9572ef3fe51a1517aba235bd8f86e",
        strip_prefix = "ryu-1.0.5",
        build_file = Label("//cargo/remote:BUILD.ryu-1.0.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__scopeguard__1_1_0",
        url = "https://crates.io/api/v1/crates/scopeguard/1.1.0/download",
        type = "tar.gz",
        sha256 = "d29ab0c6d3fc0ee92fe66e2d99f700eab17a8d57d1c1d3b748380fb20baa78cd",
        strip_prefix = "scopeguard-1.1.0",
        build_file = Label("//cargo/remote:BUILD.scopeguard-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__sct__0_6_1",
        url = "https://crates.io/api/v1/crates/sct/0.6.1/download",
        type = "tar.gz",
        sha256 = "b362b83898e0e69f38515b82ee15aa80636befe47c3b6d3d89a911e78fc228ce",
        strip_prefix = "sct-0.6.1",
        build_file = Label("//cargo/remote:BUILD.sct-0.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde__1_0_126",
        url = "https://crates.io/api/v1/crates/serde/1.0.126/download",
        type = "tar.gz",
        sha256 = "ec7505abeacaec74ae4778d9d9328fe5a5d04253220a85c4ee022239fc996d03",
        strip_prefix = "serde-1.0.126",
        build_file = Label("//cargo/remote:BUILD.serde-1.0.126.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_derive__1_0_126",
        url = "https://crates.io/api/v1/crates/serde_derive/1.0.126/download",
        type = "tar.gz",
        sha256 = "963a7dbc9895aeac7ac90e74f34a5d5261828f79df35cbed41e10189d3804d43",
        strip_prefix = "serde_derive-1.0.126",
        build_file = Label("//cargo/remote:BUILD.serde_derive-1.0.126.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_json__1_0_64",
        url = "https://crates.io/api/v1/crates/serde_json/1.0.64/download",
        type = "tar.gz",
        sha256 = "799e97dc9fdae36a5c8b8f2cae9ce2ee9fdce2058c57a93e6099d919fd982f79",
        strip_prefix = "serde_json-1.0.64",
        build_file = Label("//cargo/remote:BUILD.serde_json-1.0.64.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_urlencoded__0_7_0",
        url = "https://crates.io/api/v1/crates/serde_urlencoded/0.7.0/download",
        type = "tar.gz",
        sha256 = "edfa57a7f8d9c1d260a549e7224100f6c43d43f9103e06dd8b4095a9b2b43ce9",
        strip_prefix = "serde_urlencoded-0.7.0",
        build_file = Label("//cargo/remote:BUILD.serde_urlencoded-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__signal_hook_registry__1_3_0",
        url = "https://crates.io/api/v1/crates/signal-hook-registry/1.3.0/download",
        type = "tar.gz",
        sha256 = "16f1d0fef1604ba8f7a073c7e701f213e056707210e9020af4528e0101ce11a6",
        strip_prefix = "signal-hook-registry-1.3.0",
        build_file = Label("//cargo/remote:BUILD.signal-hook-registry-1.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__slab__0_4_3",
        url = "https://crates.io/api/v1/crates/slab/0.4.3/download",
        type = "tar.gz",
        sha256 = "f173ac3d1a7e3b28003f40de0b5ce7fe2710f9b9dc3fc38664cebee46b3b6527",
        strip_prefix = "slab-0.4.3",
        build_file = Label("//cargo/remote:BUILD.slab-0.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__smallvec__1_6_1",
        url = "https://crates.io/api/v1/crates/smallvec/1.6.1/download",
        type = "tar.gz",
        sha256 = "fe0f37c9e8f3c5a4a66ad655a93c74daac4ad00c441533bf5c6e7990bb42604e",
        strip_prefix = "smallvec-1.6.1",
        build_file = Label("//cargo/remote:BUILD.smallvec-1.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__socket2__0_3_19",
        url = "https://crates.io/api/v1/crates/socket2/0.3.19/download",
        type = "tar.gz",
        sha256 = "122e570113d28d773067fab24266b66753f6ea915758651696b6e35e49f88d6e",
        strip_prefix = "socket2-0.3.19",
        build_file = Label("//cargo/remote:BUILD.socket2-0.3.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__spin__0_5_2",
        url = "https://crates.io/api/v1/crates/spin/0.5.2/download",
        type = "tar.gz",
        sha256 = "6e63cff320ae2c57904679ba7cb63280a3dc4613885beafb148ee7bf9aa9042d",
        strip_prefix = "spin-0.5.2",
        build_file = Label("//cargo/remote:BUILD.spin-0.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ssdp_probe__0_2_1",
        url = "https://crates.io/api/v1/crates/ssdp-probe/0.2.1/download",
        type = "tar.gz",
        sha256 = "224b0342506a785987da4c7715dc61528efc5670b148c1dfc55e73920d0e3198",
        strip_prefix = "ssdp-probe-0.2.1",
        build_file = Label("//cargo/remote:BUILD.ssdp-probe-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__strsim__0_10_0",
        url = "https://crates.io/api/v1/crates/strsim/0.10.0/download",
        type = "tar.gz",
        sha256 = "73473c0e59e6d5812c5dfe2a064a6444949f089e20eec9a2e5506596494e4623",
        strip_prefix = "strsim-0.10.0",
        build_file = Label("//cargo/remote:BUILD.strsim-0.10.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__sun__0_2_0",
        url = "https://crates.io/api/v1/crates/sun/0.2.0/download",
        type = "tar.gz",
        sha256 = "dfc29238f46800dc0e29dbc0b3cab5e745dd40560220f759e30d298740781b59",
        strip_prefix = "sun-0.2.0",
        build_file = Label("//cargo/remote:BUILD.sun-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__syn__1_0_72",
        url = "https://crates.io/api/v1/crates/syn/1.0.72/download",
        type = "tar.gz",
        sha256 = "a1e8cdbefb79a9a5a65e0db8b47b723ee907b7c7f8496c76a1770b5c310bab82",
        strip_prefix = "syn-1.0.72",
        build_file = Label("//cargo/remote:BUILD.syn-1.0.72.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__termcolor__1_1_2",
        url = "https://crates.io/api/v1/crates/termcolor/1.1.2/download",
        type = "tar.gz",
        sha256 = "2dfed899f0eb03f32ee8c6a0aabdb8a7949659e3466561fc0adf54e26d88c5f4",
        strip_prefix = "termcolor-1.1.2",
        build_file = Label("//cargo/remote:BUILD.termcolor-1.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__textwrap__0_12_1",
        url = "https://crates.io/api/v1/crates/textwrap/0.12.1/download",
        type = "tar.gz",
        sha256 = "203008d98caf094106cfaba70acfed15e18ed3ddb7d94e49baec153a2b462789",
        strip_prefix = "textwrap-0.12.1",
        build_file = Label("//cargo/remote:BUILD.textwrap-0.12.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thiserror__1_0_25",
        url = "https://crates.io/api/v1/crates/thiserror/1.0.25/download",
        type = "tar.gz",
        sha256 = "fa6f76457f59514c7eeb4e59d891395fab0b2fd1d40723ae737d64153392e9c6",
        strip_prefix = "thiserror-1.0.25",
        build_file = Label("//cargo/remote:BUILD.thiserror-1.0.25.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thiserror_impl__1_0_25",
        url = "https://crates.io/api/v1/crates/thiserror-impl/1.0.25/download",
        type = "tar.gz",
        sha256 = "8a36768c0fbf1bb15eca10defa29526bda730a2376c2ab4393ccfa16fb1a318d",
        strip_prefix = "thiserror-impl-1.0.25",
        build_file = Label("//cargo/remote:BUILD.thiserror-impl-1.0.25.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__time__0_1_44",
        url = "https://crates.io/api/v1/crates/time/0.1.44/download",
        type = "tar.gz",
        sha256 = "6db9e6914ab8b1ae1c260a4ae7a49b6c5611b40328a735b21862567685e73255",
        strip_prefix = "time-0.1.44",
        build_file = Label("//cargo/remote:BUILD.time-0.1.44.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tinyvec__1_2_0",
        url = "https://crates.io/api/v1/crates/tinyvec/1.2.0/download",
        type = "tar.gz",
        sha256 = "5b5220f05bb7de7f3f53c7c065e1199b3172696fe2db9f9c4d8ad9b4ee74c342",
        strip_prefix = "tinyvec-1.2.0",
        build_file = Label("//cargo/remote:BUILD.tinyvec-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tinyvec_macros__0_1_0",
        url = "https://crates.io/api/v1/crates/tinyvec_macros/0.1.0/download",
        type = "tar.gz",
        sha256 = "cda74da7e1a664f795bb1f8a87ec406fb89a02522cf6e50620d016add6dbbf5c",
        strip_prefix = "tinyvec_macros-0.1.0",
        build_file = Label("//cargo/remote:BUILD.tinyvec_macros-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio__0_2_25",
        url = "https://crates.io/api/v1/crates/tokio/0.2.25/download",
        type = "tar.gz",
        sha256 = "6703a273949a90131b290be1fe7b039d0fc884aa1935860dfcbe056f28cd8092",
        strip_prefix = "tokio-0.2.25",
        build_file = Label("//cargo/remote:BUILD.tokio-0.2.25.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio__1_6_0",
        url = "https://crates.io/api/v1/crates/tokio/1.6.0/download",
        type = "tar.gz",
        sha256 = "bd3076b5c8cc18138b8f8814895c11eb4de37114a5d127bafdc5e55798ceef37",
        strip_prefix = "tokio-1.6.0",
        build_file = Label("//cargo/remote:BUILD.tokio-1.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_macros__1_2_0",
        url = "https://crates.io/api/v1/crates/tokio-macros/1.2.0/download",
        type = "tar.gz",
        sha256 = "c49e3df43841dafb86046472506755d8501c5615673955f6aa17181125d13c37",
        strip_prefix = "tokio-macros-1.2.0",
        build_file = Label("//cargo/remote:BUILD.tokio-macros-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_rustls__0_14_1",
        url = "https://crates.io/api/v1/crates/tokio-rustls/0.14.1/download",
        type = "tar.gz",
        sha256 = "e12831b255bcfa39dc0436b01e19fea231a37db570686c06ee72c423479f889a",
        strip_prefix = "tokio-rustls-0.14.1",
        build_file = Label("//cargo/remote:BUILD.tokio-rustls-0.14.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tokio_util__0_3_1",
        url = "https://crates.io/api/v1/crates/tokio-util/0.3.1/download",
        type = "tar.gz",
        sha256 = "be8242891f2b6cbef26a2d7e8605133c2c554cd35b3e4948ea892d6d68436499",
        strip_prefix = "tokio-util-0.3.1",
        build_file = Label("//cargo/remote:BUILD.tokio-util-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tower_service__0_3_1",
        url = "https://crates.io/api/v1/crates/tower-service/0.3.1/download",
        type = "tar.gz",
        sha256 = "360dfd1d6d30e05fda32ace2c8c70e9c0a9da713275777f5a4dbb8a1893930c6",
        strip_prefix = "tower-service-0.3.1",
        build_file = Label("//cargo/remote:BUILD.tower-service-0.3.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tracing__0_1_26",
        url = "https://crates.io/api/v1/crates/tracing/0.1.26/download",
        type = "tar.gz",
        sha256 = "09adeb8c97449311ccd28a427f96fb563e7fd31aabf994189879d9da2394b89d",
        strip_prefix = "tracing-0.1.26",
        build_file = Label("//cargo/remote:BUILD.tracing-0.1.26.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tracing_core__0_1_18",
        url = "https://crates.io/api/v1/crates/tracing-core/0.1.18/download",
        type = "tar.gz",
        sha256 = "a9ff14f98b1a4b289c6248a023c1c2fa1491062964e9fed67ab29c4e4da4a052",
        strip_prefix = "tracing-core-0.1.18",
        build_file = Label("//cargo/remote:BUILD.tracing-core-0.1.18.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tracing_futures__0_2_5",
        url = "https://crates.io/api/v1/crates/tracing-futures/0.2.5/download",
        type = "tar.gz",
        sha256 = "97d095ae15e245a057c8e8451bab9b3ee1e1f68e9ba2b4fbc18d0ac5237835f2",
        strip_prefix = "tracing-futures-0.2.5",
        build_file = Label("//cargo/remote:BUILD.tracing-futures-0.2.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__try_lock__0_2_3",
        url = "https://crates.io/api/v1/crates/try-lock/0.2.3/download",
        type = "tar.gz",
        sha256 = "59547bce71d9c38b83d9c0e92b6066c4253371f15005def0c30d9657f50c7642",
        strip_prefix = "try-lock-0.2.3",
        build_file = Label("//cargo/remote:BUILD.try-lock-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicase__2_6_0",
        url = "https://crates.io/api/v1/crates/unicase/2.6.0/download",
        type = "tar.gz",
        sha256 = "50f37be617794602aabbeee0be4f259dc1778fabe05e2d67ee8f79326d5cb4f6",
        strip_prefix = "unicase-2.6.0",
        build_file = Label("//cargo/remote:BUILD.unicase-2.6.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_bidi__0_3_5",
        url = "https://crates.io/api/v1/crates/unicode-bidi/0.3.5/download",
        type = "tar.gz",
        sha256 = "eeb8be209bb1c96b7c177c7420d26e04eccacb0eeae6b980e35fcb74678107e0",
        strip_prefix = "unicode-bidi-0.3.5",
        build_file = Label("//cargo/remote:BUILD.unicode-bidi-0.3.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_normalization__0_1_17",
        url = "https://crates.io/api/v1/crates/unicode-normalization/0.1.17/download",
        type = "tar.gz",
        sha256 = "07fbfce1c8a97d547e8b5334978438d9d6ec8c20e38f56d4a4374d181493eaef",
        strip_prefix = "unicode-normalization-0.1.17",
        build_file = Label("//cargo/remote:BUILD.unicode-normalization-0.1.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_segmentation__1_7_1",
        url = "https://crates.io/api/v1/crates/unicode-segmentation/1.7.1/download",
        type = "tar.gz",
        sha256 = "bb0d2e7be6ae3a5fa87eed5fb451aff96f2573d2694942e40543ae0bbe19c796",
        strip_prefix = "unicode-segmentation-1.7.1",
        build_file = Label("//cargo/remote:BUILD.unicode-segmentation-1.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_width__0_1_8",
        url = "https://crates.io/api/v1/crates/unicode-width/0.1.8/download",
        type = "tar.gz",
        sha256 = "9337591893a19b88d8d87f2cec1e73fad5cdfd10e5a6f349f498ad6ea2ffb1e3",
        strip_prefix = "unicode-width-0.1.8",
        build_file = Label("//cargo/remote:BUILD.unicode-width-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_xid__0_2_2",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.2.2/download",
        type = "tar.gz",
        sha256 = "8ccb82d61f80a663efe1f787a51b16b5a51e3314d6ac365b08639f52387b33f3",
        strip_prefix = "unicode-xid-0.2.2",
        build_file = Label("//cargo/remote:BUILD.unicode-xid-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__untrusted__0_7_1",
        url = "https://crates.io/api/v1/crates/untrusted/0.7.1/download",
        type = "tar.gz",
        sha256 = "a156c684c91ea7d62626509bce3cb4e1d9ed5c4d978f7b4352658f96a4c26b4a",
        strip_prefix = "untrusted-0.7.1",
        build_file = Label("//cargo/remote:BUILD.untrusted-0.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__url__2_2_2",
        url = "https://crates.io/api/v1/crates/url/2.2.2/download",
        type = "tar.gz",
        sha256 = "a507c383b2d33b5fc35d1861e77e6b383d158b2da5e14fe51b83dfedf6fd578c",
        strip_prefix = "url-2.2.2",
        build_file = Label("//cargo/remote:BUILD.url-2.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__vec_map__0_8_2",
        url = "https://crates.io/api/v1/crates/vec_map/0.8.2/download",
        type = "tar.gz",
        sha256 = "f1bddf1187be692e79c5ffeab891132dfb0f236ed36a43c7ed39f1165ee20191",
        strip_prefix = "vec_map-0.8.2",
        build_file = Label("//cargo/remote:BUILD.vec_map-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__version_check__0_9_3",
        url = "https://crates.io/api/v1/crates/version_check/0.9.3/download",
        type = "tar.gz",
        sha256 = "5fecdca9a5291cc2b8dcf7dc02453fee791a280f3743cb0905f8822ae463b3fe",
        strip_prefix = "version_check-0.9.3",
        build_file = Label("//cargo/remote:BUILD.version_check-0.9.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__want__0_3_0",
        url = "https://crates.io/api/v1/crates/want/0.3.0/download",
        type = "tar.gz",
        sha256 = "1ce8a968cb1cd110d136ff8b819a556d6fb6d919363c61534f6860c7eb172ba0",
        strip_prefix = "want-0.3.0",
        build_file = Label("//cargo/remote:BUILD.want-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasi__0_10_0_wasi_snapshot_preview1",
        url = "https://crates.io/api/v1/crates/wasi/0.10.0+wasi-snapshot-preview1/download",
        type = "tar.gz",
        sha256 = "1a143597ca7c7793eff794def352d41792a93c481eb1042423ff7ff72ba2c31f",
        strip_prefix = "wasi-0.10.0+wasi-snapshot-preview1",
        build_file = Label("//cargo/remote:BUILD.wasi-0.10.0+wasi-snapshot-preview1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen__0_2_74",
        url = "https://crates.io/api/v1/crates/wasm-bindgen/0.2.74/download",
        type = "tar.gz",
        sha256 = "d54ee1d4ed486f78874278e63e4069fc1ab9f6a18ca492076ffb90c5eb2997fd",
        strip_prefix = "wasm-bindgen-0.2.74",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-0.2.74.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_backend__0_2_74",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-backend/0.2.74/download",
        type = "tar.gz",
        sha256 = "3b33f6a0694ccfea53d94db8b2ed1c3a8a4c86dd936b13b9f0a15ec4a451b900",
        strip_prefix = "wasm-bindgen-backend-0.2.74",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-backend-0.2.74.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_futures__0_4_24",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-futures/0.4.24/download",
        type = "tar.gz",
        sha256 = "5fba7978c679d53ce2d0ac80c8c175840feb849a161664365d1287b41f2e67f1",
        strip_prefix = "wasm-bindgen-futures-0.4.24",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-futures-0.4.24.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_macro__0_2_74",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-macro/0.2.74/download",
        type = "tar.gz",
        sha256 = "088169ca61430fe1e58b8096c24975251700e7b1f6fd91cc9d59b04fb9b18bd4",
        strip_prefix = "wasm-bindgen-macro-0.2.74",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-macro-0.2.74.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_macro_support__0_2_74",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-macro-support/0.2.74/download",
        type = "tar.gz",
        sha256 = "be2241542ff3d9f241f5e2cb6dd09b37efe786df8851c54957683a49f0987a97",
        strip_prefix = "wasm-bindgen-macro-support-0.2.74",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-macro-support-0.2.74.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_shared__0_2_74",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-shared/0.2.74/download",
        type = "tar.gz",
        sha256 = "d7cff876b8f18eed75a66cf49b65e7f967cb354a7aa16003fb55dbfd25b44b4f",
        strip_prefix = "wasm-bindgen-shared-0.2.74",
        build_file = Label("//cargo/remote:BUILD.wasm-bindgen-shared-0.2.74.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__web_sys__0_3_51",
        url = "https://crates.io/api/v1/crates/web-sys/0.3.51/download",
        type = "tar.gz",
        sha256 = "e828417b379f3df7111d3a2a9e5753706cae29c41f7c4029ee9fd77f3e09e582",
        strip_prefix = "web-sys-0.3.51",
        build_file = Label("//cargo/remote:BUILD.web-sys-0.3.51.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__webpki__0_21_4",
        url = "https://crates.io/api/v1/crates/webpki/0.21.4/download",
        type = "tar.gz",
        sha256 = "b8e38c0608262c46d4a56202ebabdeb094cef7e560ca7a226c6bf055188aa4ea",
        strip_prefix = "webpki-0.21.4",
        build_file = Label("//cargo/remote:BUILD.webpki-0.21.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__webpki_roots__0_20_0",
        url = "https://crates.io/api/v1/crates/webpki-roots/0.20.0/download",
        type = "tar.gz",
        sha256 = "0f20dea7535251981a9670857150d571846545088359b28e4951d350bdaf179f",
        strip_prefix = "webpki-roots-0.20.0",
        build_file = Label("//cargo/remote:BUILD.webpki-roots-0.20.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_2_8",
        url = "https://crates.io/api/v1/crates/winapi/0.2.8/download",
        type = "tar.gz",
        sha256 = "167dc9d6949a9b857f3451275e911c3f44255842c1f7a76f33c55103a909087a",
        strip_prefix = "winapi-0.2.8",
        build_file = Label("//cargo/remote:BUILD.winapi-0.2.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_3_9",
        url = "https://crates.io/api/v1/crates/winapi/0.3.9/download",
        type = "tar.gz",
        sha256 = "5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//cargo/remote:BUILD.winapi-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_build__0_1_1",
        url = "https://crates.io/api/v1/crates/winapi-build/0.1.1/download",
        type = "tar.gz",
        sha256 = "2d315eee3b34aca4797b2da6b13ed88266e6d612562a0c46390af8299fc699bc",
        strip_prefix = "winapi-build-0.1.1",
        build_file = Label("//cargo/remote:BUILD.winapi-build-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:BUILD.winapi-i686-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_util__0_1_5",
        url = "https://crates.io/api/v1/crates/winapi-util/0.1.5/download",
        type = "tar.gz",
        sha256 = "70ec6ce85bb158151cae5e5c87f95a8e97d2c0c4b001223f33a334e3ce5de178",
        strip_prefix = "winapi-util-0.1.5",
        build_file = Label("//cargo/remote:BUILD.winapi-util-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:BUILD.winapi-x86_64-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winreg__0_7_0",
        url = "https://crates.io/api/v1/crates/winreg/0.7.0/download",
        type = "tar.gz",
        sha256 = "0120db82e8a1e0b9fb3345a539c478767c0048d842860994d96113d5b667bd69",
        strip_prefix = "winreg-0.7.0",
        build_file = Label("//cargo/remote:BUILD.winreg-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ws2_32_sys__0_2_1",
        url = "https://crates.io/api/v1/crates/ws2_32-sys/0.2.1/download",
        type = "tar.gz",
        sha256 = "d59cefebd0c892fa2dd6de581e937301d8552cb44489cdff035c6187cb63fa5e",
        strip_prefix = "ws2_32-sys-0.2.1",
        build_file = Label("//cargo/remote:BUILD.ws2_32-sys-0.2.1.bazel"),
    )
