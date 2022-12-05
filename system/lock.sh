#!/bin/sh

set -e
xset s off dpms 0 11 0

# YR COLORS
# i3lock --color=0f0210 --ignore-empty-password --show-failed-attempts \
#        --nofork --clock  --keylayout 1 \
#        --time-color=00ced1 --date-color=f6f454 --layout-color=ff00ff 
# xset s off -dpms

# DRACULA COLORS
i3lock --color=282a36 --ignore-empty-password --show-failed-attempts \
       --nofork --clock  --keylayout 1 \
       --time-color=bd93f9 --date-color=f1fa8c --layout-color=50fa7b 
xset s off -dpms
