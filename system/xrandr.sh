#!/bin/bash

if [ "$(xrandr | grep -c ' connected ')" -eq 2 ]; then # dual-monitor
    if [ "$(xrandr | grep HDMI1 | grep -c ' connected ')" -eq 1 ]; then
        xrandr --output eDP1 --auto --primary --output HDMI1 --auto --right-of eDP1
    fi
    feh --bg-scale --randomize ~/yrData/images/wallpapers/*
else
    xrandr --output eDP1 --auto --primary --output HDMI1 --off
    feh --bg-scale --randomize ~/yrData/images/wallpapers/*
fi
