#!/bin/bash

function get_volume {
    amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
    amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function volume_notification {
    iconMuted="/usr/share/icons/Papirus-Dark/16x16/panel/volume-level-muted.svg"
    iconSound="/usr/share/icons/Papirus-Dark/16x16/panel/volume-level-high.svg"
    if is_mute ; then
        volume=$(get_volume)
        # Make the bar with the━ special character ─ (it's not dash -)
        # https://en.wikipedia.org/wiki/Box-drawing_character
        bar=$(seq --separator="━" 0 "$((volume / 5))" | sed 's/[0-9]//g')
        notify-send -i $iconMuted -r 2593 -u normal " $bar" -t 5000
    else
        volume=$(get_volume)
        if [[ $volume -eq 0 ]]; then
            notify-send -i $iconMuted -r 2593 -u normal " $bar" -t 5000
            bar=$(seq --separator="━" 0 "$((volume / 5))" | sed 's/[0-9]//g')
        else
            bar=$(seq --separator="━" 0 "$((volume / 5))" | sed 's/[0-9]//g')
            notify-send -i $iconSound -r 2593 -u normal " $bar" -t 5000
        fi
    fi
}

function get_mic_volume {
    amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mic_mute {
    amixer get Capture | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function mic_notification {
    iconMuted="/usr/share/icons/Papirus-Dark/16x16/panel/mic-off.svg"
    iconSound="/usr/share/icons/Papirus-Dark/16x16/panel/mic-on.svg"
    if is_mic_mute ; then
        volume=$(get_mic_volume)
        bar=$(seq --separator="━" 0 "$((volume / 9))" | sed 's/[0-9]//g')
        notify-send -i $iconMuted -r 2593 -u normal " $bar" -t 5000
    else
        volume=$(get_mic_volume)
        # Make the bar with the━ special character ─ (it's not dash -)
        # https://en.wikipedia.org/wiki/Box-drawing_character
        bar=$(seq --separator="━" 0 "$((volume / 9))" | sed 's/[0-9]//g')
        # Send the notification
        notify-send -i $iconSound -r 2593 -u normal " $bar" -t 5000
    fi
}


case $1 in
    up)
        amixer set Master 5%+
        volume_notification
        ;;
    down)
        amixer set Master 5%-
        volume_notification
        ;;
    mute)
        # toggle mute
        amixer set Master toggle
        volume_notification
        ;;
    mic)
        # toggle mute
        amixer set Capture toggle
        mic_notification
        ;;
esac
