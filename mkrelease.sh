#!/bin/bash
set -e

git submodule init
git submodule update

VERSION="5.4.0.1"
NAME="moka-icon-theme"
git-archive-all.sh --format tar --prefix ${NAME}-${VERSION}/ --verbose -t HEAD ${NAME}-${VERSION}.tar
xz -9 "${NAME}-${VERSION}.tar"

gpg --default-key 1E1FB0017C998A8AE2C498A6C2EAA8A26ADC59EE --armor --detach-sign "${NAME}-${VERSION}.tar.xz"
gpg --verify "${NAME}-${VERSION}.tar.xz.asc"

