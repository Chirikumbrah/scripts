#!/bin/sh

# start polkit agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# init keyring
eval "$(gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)"

# export keyring
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

# # set QT platform theme engine
# export QT_QPA_PLATFORMTHEME="qt5ct"

# Setup autostart
# ~/.scripts/system/wayland/autostart.sh &

exec Hyprland
