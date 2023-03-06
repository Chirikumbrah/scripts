#!/bin/bash

sudo ln -s /etc/sv/{dbus,dhcpd,iwd,udevd,adb,acpid,tlp,chronyd,bluetoothd,ngetty} /var/service/

# stopping agetty services
sudo rm -fr /var/service/agetty*
