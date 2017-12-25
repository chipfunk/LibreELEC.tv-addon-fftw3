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

PKG_NAME="fftw"
PKG_VERSION="3.3.7"
PKG_REV="100"
PKG_ARCH="any"
PKG_ADDON_PROJECTS="Generic RPi RPi2 imx6 WeTek_Hub WeTek_Play_2 Odroid_C2"
PKG_LICENSE="Proprietary"
PKG_SITE="http://www.fftw.org"
PKG_URL="http://www.fftw.org/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="$PKG_NAME-$PKG_VERSION"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="service/system"
PKG_SHORTDESC="FFTW Discrete Fourier Transform library"
PKG_LONGDESC="FFTW is a free collection of fast C routines for computing the Discrete Fourier Transform in one or more dimensions."

PKG_AUTORECONF="no"
PKG_CONFIGURE_SCRIPT="configure"
PKG_USE_CMAKE="yes"
PKG_CONFIGURE_OPTS_TARGET="--enable-single-precision --disable-fortran"

PKG_IS_ADDON="yes"
PKG_ADDON_NAME="FFTW"
PKG_ADDON_TYPE="xbmc.service.library"

addon() {
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib/
  cp -RP $(get_build_dir fftw)/.install_pkg/* $ADDON_BUILD/$PKG_ADDON_ID/
}

