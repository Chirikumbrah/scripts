#!/bin/bash

COLOR="^c#bd93f9^"
VOL=$(amixer -c 0 get Master | tail -1 | awk '{print $4}' | sed 's/[^0-9]*//g')
STATE=$(amixer -c 0 get Master | tail -1 | awk '{print $6}' | sed 's/[^a-z]*//g')
[ "$STATE" = "off" ] || [ "$VOL" = "0" ] && ICON="" || ICON=" $VOL%"

echo "$COLOR$ICON"
