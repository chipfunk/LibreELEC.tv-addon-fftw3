################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2009-2016 Lukas Rusak (lrusak@libreelec.tv)
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="fftw3"
PKG_VERSION="3.3.10"
PKG_REV="100"
PKG_ARCH="any"
PKG_LICENSE="Proprietary"
PKG_SITE="http://www.fftw.org"
PKG_URL="http://www.fftw.org/fftw-${PKG_VERSION}.tar.gz"
PKG_SHA256_CHECKSUM="56c932549852cddcfafdab3820b0200c7742675be92179e59e6215b340e26467"
# PKG_SOURCE_DIR="${PKG_NAME}-${PKG_VERSION}"
PKG_DEPENDS_TARGET="glibc"
PKG_SECTION="service/system"
PKG_SHORTDESC="FFTW Discrete Fourier Transform library - double precision"
PKG_LONGDESC="FFTW is a free collection of fast C routines for computing the Discrete Fourier Transform in one or more dimensions."
PKG_TOOLCHAIN="configure" # or one of auto, meson, cmake, cmake-make, configure, make, ninja, autotools, manual

PKG_CONFIGURE_OPTS_TARGET="--disable-fortran"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="fftw3"
PKG_ADDON_TYPE="xbmc.service.library"

addon() {
  mkdir -p ${ADDON_BUILD}/${PKG_ADDON_ID}/usr/lib
  cp -r ${PKG_INSTALL}/usr/lib/libfftw3* ${ADDON_BUILD}/${PKG_ADDON_ID}/usr/lib
}
