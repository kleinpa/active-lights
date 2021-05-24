load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_rust",
    sha256 = "18c0a02a007cd26c3f5b4d21dc26a80af776ef755460028a796bc61c649fdf3f",
    strip_prefix = "rules_rust-467a301fd665db344803c1d8a2401ec2bf8c74ce",
    urls = [
        # Master branch as of 2021-04-23
        "https://github.com/bazelbuild/rules_rust/archive/467a301fd665db344803c1d8a2401ec2bf8c74ce.tar.gz",
    ],
)

load("@rules_rust//rust:repositories.bzl", "rust_repositories")

rust_repositories(
    edition = "2018",
    version = "1.52.1",
)

load("//cargo:crates.bzl", "raze_fetch_remote_crates")

raze_fetch_remote_crates()

http_archive(
    name = "cargo_raze",
    sha256 = "700e1fa8af69efb1f04d9dbc9bf74f9fa7df91177d04ada894bf37fa0a2dde1d",
    strip_prefix = "cargo-raze-0.12.0",
    url = "https://github.com/google/cargo-raze/archive/refs/tags/v0.12.0.zip",
)

load("@cargo_raze//:repositories.bzl", "cargo_raze_repositories")

cargo_raze_repositories()

load("@cargo_raze//:transitive_deps.bzl", "cargo_raze_transitive_deps")

cargo_raze_transitive_deps()
