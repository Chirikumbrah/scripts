#!/bin/bash

STATUS_LINE=$(amixer get Capture | tail -n 1)
STATUS=$(echo "${STATUS_LINE}" | grep -wo "off")
COLOR="^c#FF92DF^"

[ "${STATUS}" = "off" ] && ICON="" || ICON=""

echo "$COLOR$ICON"
