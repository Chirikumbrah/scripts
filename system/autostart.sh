#!/bin/bash

# Set default apps for mimetypes
~/.scripts/system/xdg-defaults.sh

# set brightness
# xbacklight -set 80

# desktop effects
picom-pijulius                       \
     -fb                             \
    --animations                     \
    --animation-window-mass 0.5      \
    --animation-for-open-window zoom \
    --animation-stiffness 350        \
    --backend xr_glx_hybrid
    # --experimental-backends          
    # --backend glx
    # --backend xrender

# keyboard layouts
setxkbmap -layout 'us,ru' -option 'grp:alt_shift_toggle' -print | xkbcomp - "$DISPLAY" &

# update/create user dirs
xdg-user-dirs-update &

# Setup dunst daemon
kill $(pgrep -x dunst)

# run warpd
warpd

# normal cursor
xsetroot -cursor_name left_ptr &

# turn off PC speaker (loud BEEP)
xset -b &

# set screen timeout
xset s off dpms 0 3240 0 

# plugged devices management
udiskie -ans &

# clipboard management
clipmenud &

# battery status notifications
~/.scripts/system/battery-notify.sh &

# kdeconnect daemon
# /usr/lib64/libexec/kdeconnectd &
# kdeconnect-indicator &

# blueman
#blueman-applet &

# authorization window for GUI programs
# /usr/libexec/polkit-gnome-authentication-agent-1 &
# lxsession &

# network manager
nm-applet &

