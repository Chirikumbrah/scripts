#!/bin/bash

SCREENSHOTS_PATH="$HOME/yrData/images/screenshots/'%d-%m-%Y_%H:%M:%S_$wx$h.png'"

function partial_screenshot {
    # scrot -z -s -d 1 ~/yrData/images/screenshots/'%d-%m-%Y_%H:%M:%S_$wx$h.png' && notify-send "Partial screenshot saved" -u low
    flameshot gui
}

function full_screenshot {
    # scrot -z -d 1 ~/yrData/images/screenshots/'%d-%m-%Y_%H:%M:%S_$wx$h.png' && notify-send "Screenshot saved" -u low
    flameshot screen
}

case $1 in
    full) full_screenshot ;;
        
    partial) partial_screenshot ;;
esac
