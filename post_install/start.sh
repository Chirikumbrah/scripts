#!/bin/bash

sudo cp -r ./files/* /

sh ./scripts/xbps-packages.sh
sh ./scripts/pip-packages.sh
sh ./scripts/npm-packages.sh
sh ./scripts/setup-groups.sh
sh ./scripts/flatpak-packages.sh
sh ./scripts/flatpak-override-fs.sh
# sh ./scripts/zsh-install.sh
sh ./scripts/fish-install.fish
sh ./scripts/llama-installing.sh
sh ./scripts/picom-installing.sh.sh
sh ./scripts/warpd-installing.sh
sh ./scripts/solving-unknown-key-zoom.sh
sh ./scripts/wine-fonts/winefontssmoothing.sh
sh ./scripts/wine-fonts/winefontssmoothing-en.sh
sh ./scripts/adding-runit-daemons.sh
sh ./scripts/qt-heif-image-plugin.sh
sh ./scripts/setup-audio.sh
# sh ./scripts/setup-seatd.sh
