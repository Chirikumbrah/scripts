#!/bin/bash

MIC=$(pamixer --default-source --get-volume-human)
COLOR="^c#FF92DF^"

[ "$MIC" = "muted" ] && ICON="" || ICON=""

echo "$COLOR$ICON"
