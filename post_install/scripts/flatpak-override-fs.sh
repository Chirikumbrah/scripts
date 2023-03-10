#!/bin/bash

ALL_APPS="$(flatpak list --app --columns=application)"

for APP in $ALL_APPS
do
  sudo flatpak override "$APP" --filesystem=home -v --ostree-verbose
done
