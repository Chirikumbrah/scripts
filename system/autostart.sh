#!/bin/bash

setxkbmap -layout 'us,ru' -option 'grp:alt_shift_toggle' &
xdg-user-dirs-update
xset s off dpms 0 3240 0
xrandr --brightness 0.8 &
udiskie -ans &
clipmenud &
feh --bg-scale --randomize ~/yrData/images/wallpapers/* &
# kdeconnect daemon
# /usr/lib64/libexec/kdeconnectd &
# kdeconnect-indicator &

# blueman
#blueman-applet &

# network manager
nm-applet &

