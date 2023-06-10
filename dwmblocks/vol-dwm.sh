#!/bin/bash

COLOR="^c#f1fa8c^" # yellow
VOL=$(pamixer --get-volume-human)
[ "$VOL" = "muted" ] || [ "$VOL" = "0%" ] && ICON="" || ICON=" $VOL"

echo "$COLOR$ICON"
