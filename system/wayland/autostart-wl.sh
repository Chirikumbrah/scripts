#!/bin/bash

# Set default apps for mimetypes
~/.scripts/system/xdg_defaults.sh

# set brightness
# xbacklight -set 80

# update/create user dirs
xdg-user-dirs-update

# run warpd
warpd

# normal cursor
# xsetroot -cursor_name left_ptr

# turn off PC speaker (loud BEEP)
# xset -b

# set screen timeout
# xset s off dpms 0 3240 0 

~/.scripts/system/wayland/clipmenu-daemon.sh &

# plugged devices management
udiskie -ans &


# kdeconnect daemon
# /usr/lib64/libexec/kdeconnectd &
# kdeconnect-indicator &

# blueman
# blueman-applet &

# authorization window for GUI programs
# /usr/libexec/polkit-gnome-authentication-agent-1 &
# lxsession &

# network manager
nm-applet --indicator & disown
