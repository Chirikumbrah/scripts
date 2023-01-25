#!/bin/bash

ICON="/usr/share/icons/Papirus-Dark/24x24/actions/xfpm-brightness-lcd.svg"
BRIGHTNESS=$(xbacklight -get | cut -d '.' -f 1)
BAR=$(seq -s "━" 0 $((BRIGHTNESS / 5)) | sed 's/[0-9]//g')
notify-send -i "$ICON" -r 5555 " $BAR" -t 5000 &
