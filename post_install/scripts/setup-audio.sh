#!/bin/bash

sudo usermod -aG _pipewire,pulse,pulse-access "$USER"
sudo ln -s /etc/sv/{pipewire*,wireplumber} /var/service/
