#!/usr/bin/env bash

export XDG_RUNTIME_DIR=/run/user/`id -u`
export WAYLAND_DISPLAY=wayland-1

pkill wl-paste || echo "Restarting clipman: already dead" | ts

exec wl-paste -t text --watch clipman store 2>&1 | ts > /tmp/clipman.log
