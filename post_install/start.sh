#!/bin/bash

sudo cp -r ./files/* /

sh ./scripts/xbps_packages.sh
sh ./scripts/pip_packages.sh
sh ./scripts/npm_packages.sh
sh ./scripts/zsh_install.sh
fish ./scripts/fish_install.fish
sh ./scripts/llama_installing.sh
sh ./scripts/picom_installing.sh.sh
sh ./scripts/warpd_installing.sh
sh ./scripts/solving_unknown_key_zoom.sh
sh ./scripts/set_explorer.sh
sh ./scripts/wine_fonts/winefontssmoothing.sh
sh ./scripts/wine_fonts/winefontssmoothing_en.sh
