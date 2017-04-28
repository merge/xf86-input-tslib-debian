#/bin/bash

VERSION="0.0.7"

rm -rf output
mkdir -p output/sources
cp -a debian output/sources/
cd output/sources
uscan --force-download
tar -xvf ../xf86-input-tslib-${VERSION}.tar.bz2 --strip-components=1
debuild
