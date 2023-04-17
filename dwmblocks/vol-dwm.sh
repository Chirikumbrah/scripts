#!/bin/bash

COLOR="^c#FF92DF^"
VOL=$(pamixer --get-volume-human)
[ "$VOL" = "muted" ] || [ "$VOL" = "0%" ] && ICON="" || ICON=" $VOL"

echo "$COLOR$ICON"
