#!/bin/bash

COLOR="^c#bd93f9^"
VOL=$(pamixer --get-volume-human)
[ "$VOL" = "muted" ] || [ "$VOL" = "0%" ] && ICON="" || ICON=" $VOL"

echo "$COLOR$ICON"
