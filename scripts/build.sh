#!/bin/sh

cd `dirname $0`

cd ../resources
rm -f app.icns
iconutil -c icns app.iconset

cd ..
mkdir -p bin
cd bin
electron-packager ../src MyApp --platform=darwin --arch=x64 --version=0.30.3 --overwrite --icon=../resources/app.icns
cd ../

