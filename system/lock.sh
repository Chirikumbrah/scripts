#!/bin/sh

set -e
xset s off dpms 0 11 0

# DRACULA COLORS
i3lock --nofork                \
       --clock                 \
       --keylayout 1           \
       --show-failed-attempts  \
       --ignore-empty-password \
       --color=282a36          \
       --time-color=bd93f9     \
       --date-color=f1fa8c     \
       --layout-color=50fa7b   

xset s off -dpms
