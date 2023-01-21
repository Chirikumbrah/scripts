#!/bin/bash

SHELL="/bin/bash"

case $1 in
    powermenu)
        SELECTED="$(echo -e "(l)ock\n  (e)xit\n  (r)eboot\n  (s)hutdown\n" | tofi)"


        if [ "$SELECTED" = "(l)ock" ]; then
            notify-send "locking..." -u low
            sh "$HOME/.scripts/lock"
            sh "$HOME/.scripts/system/lock.sh"
        elif [ "$SELECTED" = "(e)xit" ]; then
            dwm=$( ps -o pid,cmd ax | awk '/dwm/{ if ($2 == "dwm") print $1 }' )
            notify-send "exiting..." -u low
            [[ -n "$dwm" ]] && kill -s TERM "$dwm"

        elif [ "$SELECTED" = "(r)eboot" ]; then
            notify-send "rebooting..." -u low
            sudo reboot
        elif [ "$SELECTED" = "(s)hutdown" ]; then
            notify-send "shutting down..." -u low
            sudo poweroff
        fi
    ;;
    apps)
        j4-dmenu-desktop --use-xdg-de --dmenu="(cat ; (stest -flx   \
            $(echo "$PATH" | tr : ' ') | sort -u))    | dmenu       \
            -fn '$FONT' -nb '$NORMBGCOLOR' -nf '$NORMFGCOLOR'       \
            -sb '$SELBGCOLOR' -sf '$SELFGCOLOR'"
    ;;
    clipmenu)
        clipmenu -fn "$FONT" -nb "$NORMBGCOLOR" -nf "$NORMFGCOLOR" -sb "$SELBGCOLOR" -sf "$SELFGCOLOR"
    ;;
esac
