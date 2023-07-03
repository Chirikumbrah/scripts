#!/bin/bash


# set the wallpaper
swaybg -m fill -i ~/.config/hypr/hong-kong-night.jpg &

# set the cursor
hyprctl setcursor Layan-border-cursors 24

# set QT platform theme engine
export QT_QPA_PLATFORMTHEME="qt5ct"

# set default apps for mimetypes
# ~/.scripts/system/xdg-defaults.sh

# setup dunst daemon
kill $(pgrep -x dunst) &

# set screen timeout
swayidle -w &

# clipboard management
copyq --start-server &

# set proper cursor
hyprctl setcursor Layan-border-cursors 24 &

# battery status notifications
~/.scripts/system/battery-notify.sh &

# blueman
blueman-applet &

# network manager
nm-applet --indicator &

# nextcloud client
nextcloud --background &
