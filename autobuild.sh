#/bin/bash

VERSION="1.1.1"

rm -rf output
mkdir -p output/sources
cp -a debian output/sources/
cd output/sources
uscan --force-download
tar -xvf ../xf86-input-tslib-${VERSION}.tar.xz --strip-components=1
debuild
