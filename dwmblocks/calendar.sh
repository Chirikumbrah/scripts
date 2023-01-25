#!/bin/bash

# FULLDATEFMT=${FULLDATEFMT:-"+%A %d %B %Y"}
COLOR="^c#f1fa8c^"
ICON=""

echo "$COLOR$ICON $(date "+%a %d %b" | awk '{ print tolower($0) }')"
