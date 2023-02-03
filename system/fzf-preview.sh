#!/bin/bash

FILE="$1"

if [[ -d "$FILE" ]]; then
    ls -al --color "$FILE"
elif [[ $(file --mime "$FILE") =~ binary ]]; then
    if [[ $(file --mime "$FILE") =~ "image/" ]]; then
        COLUMNS=$(tput cols)
        # COLUMNS=$((COLUMNS / 2))
        catimg -w "$COLUMNS" "$FILE"
    else
        printf '%s\nIs a binary FILE' "$FILE" && false
    fi
else
    bat --style=numbers --color=always "$FILE" 2> /dev/null | head -100
fi
