#!/bin/bash

function volume_notification {
    volMuted="/usr/share/icons/Papirus-Dark/16x16/panel/volume-level-muted.svg"
    volSound="/usr/share/icons/Papirus-Dark/16x16/panel/volume-level-high.svg"

    VOL=$(pamixer --get-volume-human)
    BAR=$(seq --separator="━" 0 "$(($(pamixer --get-volume) / 5))" | sed 's/[0-9]//g')

    [ "$VOL" = "muted" ] || [ "$VOL" = "0%" ]  && VOL_ICON=$volMuted || VOL_ICON=$volSound
    dunstify -i "$VOL_ICON" -r 2593 " $BAR" -t 5000
}

function get_mic_volume {
    amixer get Capture | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mic_mute {
    amixer get Capture | grep off > /dev/null
}

function mic_notification {
    micMuted="/usr/share/icons/Papirus-Dark/16x16/panel/mic-off.svg"
    micSound="/usr/share/icons/Papirus-Dark/16x16/panel/mic-on.svg"
    MIC=$(get_mic_volume)
    BAR=$(seq --separator="━" 0 "$((MIC / 9))" | sed 's/[0-9]//g')
    is_mic_mute && MIC_ICON=$micMuted || MIC_ICON=$micSound
    dunstify -i "$MIC_ICON" -r 2593 " $BAR" -t 5000
}

case $1 in
    up)
        amixer set Master 5%+
        volume_notification &
        ;;
    down)
        amixer set Master 5%-
        volume_notification &
        ;;
    mute)
        amixer set Master toggle
        volume_notification &
        ;;
    mic)
        amixer set Capture toggle
        mic_notification &
        ;;
esac
