pkg_name=hab-pkg-viz
pkg_origin=smith
pkg_version=0.1.0
pkg_source=nosuchfile.tgz
pkg_maintainer="Nathan L Smith <smith@chef.io>"
pkg_description="Habitat Package Dependency Visualizer"
pkg_license=('Apache-2.0')
pkg_bin_dirs=(bin)
pkg_deps=(
  core/bash
  core/coreutils
  core/gawk
  core/hab
)

do_download() {
  return 0
}

do_unpack() {
  return 0
}

do_verify() {
  return 0
}

do_build() {
  return 0
}

do_install() {
  install -D -m 0755 "$PLAN_CONTEXT/../$pkg_name" "$pkg_prefix/bin/$pkg_name"
}
