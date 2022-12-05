#!/bin/bash


function get_brightness {
    xbacklight -get | cut -d '.' -f 1
}

function send_notification {
    icon="/usr/share/icons/Papirus-Dark/16x16/apps/mate-brightness-applet.svg"
    brightness=$(get_brightness)
    bar=$(seq -s "━" 0 $((brightness / 5)) | sed 's/[0-9]//g')
    notify-send -i "$icon" -r 5555 " $bar" -t 5000
}

send_notification
