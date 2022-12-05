#!/bin/bash

mkdir -p ~/.apps
mkdir -p ~/.local/bin
git clone https://github.com/pijulius/picom.git ~/.apps/picom
cd ~/.apps/picom
git submodule update --init --recursive
LDFLAGS="-L/usr/lib" CPPFLAGS="-I/usr/include" meson --buildtype=release . build
ninja -C build
ln -s ~/.apps/picom/build/src/picom ~/.local/bin
