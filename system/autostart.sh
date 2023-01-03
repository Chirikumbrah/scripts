#!/bin/bash

# Set default apps for mimetypes
~/.scripts/system/xdg_defaults.sh

# set brightness
# xbacklight -set 80

# desktop effects
picom-pijulius                       \
     -fb                             \
    --vsync                          \
    --animations                     \
    --animation-window-mass 0.5      \
    --animation-for-open-window zoom \
    --animation-stiffness 350        \
    --backend xr_glx_hybrid
    # --backend glx
    # --backend xrender
    # --experimental-backends

# keyboard layouts
setxkbmap -layout 'us,ru' -option 'grp:alt_shift_toggle' -print | xkbcomp - "$DISPLAY" &

# update/create user dirs
xdg-user-dirs-update

# run warpd
warpd

# normal cursor
xsetroot -cursor_name left_ptr

# turn off PC speaker (loud BEEP)
xset -b

# set screen timeout
xset s off dpms 0 3240 0 

# plugged devices management
udiskie -ans &

# clipboard management
clipmenud &

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

