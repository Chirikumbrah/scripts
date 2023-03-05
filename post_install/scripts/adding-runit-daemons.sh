#!/bin/bash

sudo ln -s /etc/sv/{dbus,NetworkManager,udevd,adb,acpid,tlp,chronyd,bluetoothd,ngetty} /var/service/

# stopping agetty services
sudo rm -fr /var/service/agetty*
