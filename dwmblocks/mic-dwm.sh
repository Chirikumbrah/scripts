#!/bin/bash

MIC=$(pamixer --default-source --get-volume-human)
COLOR="^c#f1fa8c^"

[ "$MIC" = "muted" ] && ICON="" || ICON=""

echo "$COLOR$ICON"
