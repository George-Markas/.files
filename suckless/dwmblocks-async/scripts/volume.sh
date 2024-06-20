#!/bin/bash

GLYPH_MUTE='󰸈'
GLYPH_2='󰕾'
GLYPH_1='󰖀'
GLYPH_0='󰕿'

volume_info=$(amixer get Master | tail -n1)
volume_percentage=$(echo "$volume_info" | sed -r 's/.*\[(.*)%\].*/\1/')
mute=$(echo "$volume_info" | grep -o '\[off\]')

if [ -n "$mute" ]; then
    GLYPH=$GLYPH_MUTE;
elif [ "$volume_percentage" -lt 30 ]; then
	GLYPH=$GLYPH_0
elif [ "$volume_percentage" -lt 60 ]; then
   	GLYPH=$GLYPH_1 
else
    GLYPH=$GLYPH_2
fi

echo "$GLYPH $volume_percentage%"
