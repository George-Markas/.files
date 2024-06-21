#!/bin/bash

GLYPH_AC='󰚥'
GLYPH_CHARGING='󰂄'
GLYPH_FULL='󰁹'
GLYPH_8='󰂂'
GLYPH_7='󰂁'
GLYPH_6='󰂀'
GLYPH_5='󰁿'
GLYPH_4='󰁾'
GLYPH_3='󰁽'
GLYPH_2='󰁼'
GLYPH_1='󰁻'
GLYPH_0='󰁺'

capacity=$(cat /sys/class/power_supply/BAT0/capacity | awk '{print $1 + 2}') # full at 98
charging=$(cat /sys/class/power_supply/BAT0/status)
ac_connected=$(cat /sys/class/power_supply/ADP0/online)

if [[ "$charging" == "Charging" ]]; then
	GLYPH=$GLYPH_CHARGING
elif [[ $ac_connected == 1 ]]; then
	GLYPH=$GLYPH_AC # plugged in but not charging
elif [[ $capacity -lt 10 ]]; then
	GLYPH=$GLYPH_0 # 2-9%
elif [[ $capacity -lt 20 ]]; then
	GLYPH=$GLYPH_1 # 10-19%
elif [[ $capacity -lt 30 ]]; then
	GLYPH=$GLYPH_2 # 20-29%
elif [[ $capacity -lt 40 ]]; then
  	GLYPH=$GLYPH_3 # 30-39%
elif [[ $capacity -lt 50 ]]; then
	GLYPH=$GLYPH_4 # 40-49%
elif [[ $capacity -lt 60 ]]; then
  	GLYPH=$GLYPH_5 # 50-59%
elif [[ $capacity -lt 70 ]]; then
  	GLYPH=$GLYPH_6 # 60-69%
elif [[ $capacity -lt 80 ]]; then
  	GLYPH=$GLYPH_7 # 70-79%
elif [[ $capacity -lt 90 ]]; then
  	GLYPH=$GLYPH_8 # 80-89%
else
	GLYPH=$GLYPH_FULL # 90-100%
fi

echo "$GLYPH $capacity%"
