#!/bin/bash

percentage=$(grep "^\s*w" /proc/net/wireless | awk '{ print "", int($3 * 100 / 70)}'| xargs)

if [[ "$(cat /sys/class/net/en*/carrier)" == "1" ]]; then
    echo "󰈀 $(ls /sys/class/net/ | grep en)"
elif [[ -n $percentage ]]; then
    echo "󰖩 $percentage%"
else
    echo "󰖪 down"
fi
