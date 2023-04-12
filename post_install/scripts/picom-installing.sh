#!/bin/bash

mkdir -p ~/.apps
mkdir -p ~/.local/bin
git clone https://github.com/FT-Labs/picom.git ~/.apps/picom
cd ~/.apps/picom
git submodule update --init --recursive
meson setup --buildtype=release . build
ninja -C build
mv ~/.apps/picom/build/src/picom ~/.local/bin/picom-ft-labs
