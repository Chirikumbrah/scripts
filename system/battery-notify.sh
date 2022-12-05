#!/bin/bash

BATTERY_STATE=$(echo "${BATTERY_INFO}" | upower -i "$(upower -e | grep 'BAT')" | grep -E "state|to\ full" | awk '{print $2}')
BATTERY_POWER=$(echo "${BATTERY_INFO}" | upower -i "$(upower -e | grep 'BAT')" | grep -E "percentage" | awk '{print $2}' | tr -d '%')


while true; do
    if [[ "${BATTERY_STATE}" = "pending-charge" ]]; then
        notify-send -t 7000 -i /usr/share/icons/ePapirus/32x32/devices/battery.svg "Normal battery level" "Unplug the charger :)"
        sleep 300

    elif [[ "${BATTERY_STATE}" = "discharging" && "${BATTERY_POWER}" -eq 40 ]]; then
        notify-send -t 7000 -i /usr/share/icons/ePapirus/32x32/devices/battery.svg "Medium battery level" "Time to plug the charger"
        sleep 60

    elif [[ "${BATTERY_STATE}" = "discharging" && "${BATTERY_POWER}" -eq 10 ]]; then
        notify-send -t 7000 -i /usr/share/icons/ePapirus/32x32/devices/battery.svg -u critical "Critical battery level" "Plug the charger immediately!"
        sleep 60

    elif [[ "${BATTERY_STATE}" = "discharging" && "${BATTERY_POWER}" -eq 5 ]]; then
        notify-send -t 7000 -i /usr/share/icons/ePapirus/32x32/devices/battery.svg -u critical "Critical battery level" "Plug the charger immediately!"
        sleep 60

    elif [[ "${BATTERY_STATE}" = "discharging" && "${BATTERY_POWER}" -eq 0 ]]; then
        notify-send -t 7000 -i /usr/share/icons/ePapirus/32x32/devices/battery.svg -u critical "Critical battery level" "Shutting down!"
        shutdown

    else
        sleep 300
    fi
done
