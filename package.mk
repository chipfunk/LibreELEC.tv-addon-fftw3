# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="fftw3"
PKG_VERSION="3.3.10"
PKG_REV="100"
PKG_ARCH="any"
PKG_LICENSE="Proprietary"
PKG_SITE="http://www.fftw.org"
PKG_URL="http://www.fftw.org/fftw-${PKG_VERSION}.tar.gz"
PKG_SHA256_CHECKSUM="56c932549852cddcfafdab3820b0200c7742675be92179e59e6215b340e26467"
PKG_MAINTAINER="chipfunk" # Full name or forum/GitHub nickname, if you want to be identified as the addon maintainer
PKG_DEPENDS_TARGET="glibc"
PKG_SECTION="service/system"
PKG_SHORTDESC="FFTW Discrete Fourier Transform library - double precision"
PKG_LONGDESC="FFTW is a free collection of fast C routines for computing the Discrete Fourier Transform in one or more dimensions."
PKG_TOOLCHAIN="configure" # or one of auto, meson, cmake, cmake-make, configure, make, ninja, autotools, manual

PKG_CONFIGURE_OPTS_TARGET="--disable-fortran"

PKG_LIBNAME="libfftw3.so"
PKG_LIBPATH=".libs/${PKG_LIBNAME}"
PKG_LIBVAR="FFTW3_LIB"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="${PKG_NAME}"
PKG_ADDON_TYPE="xbmc.service"

addon() {
  mkdir -p ${ADDON_BUILD}/${PKG_ADDON_ID}
  cp ${PKG_INSTALL}/usr/lib/libfftw3* ${ADDON_BUILD}/${PKG_ADDON_ID}
}
