#!/bin/bash

GLYPH_3='󰈸'
GLYPH_2='󱃂'
GLYPH_1='󰔏'
GLYPH_0='󱃃'

# set yours
sensor="/sys/class/hwmon/hwmon3/temp1_input"

temp=$(cat $sensor | sed 's/000$//')

if [[ $temp -lt 40 ]]; then
	GLYPH=$GLYPH_0
elif [[ $temp -lt 55 ]]; then
	GLYPH=$GLYPH_1
elif [[ $temp -lt 70 ]]; then
	GLYPH=$GLYPH_2
else
	GLYPH=$GLYPH_3
fi

echo "$GLYPH $temp°C"
