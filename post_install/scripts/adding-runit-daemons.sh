#!/bin/bash

sudo ln -s /etc/sv/{dbus,NetworkManager,chronyd,bluetoothd,ngetty} /var/service/

# stopping agetty services
sudo rm -fr /var/service/agetty*
