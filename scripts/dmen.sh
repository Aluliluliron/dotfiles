#!/bin/sh

# Import the colors
. "${HOME}/.cache/wal/colors.sh"

dmenu_run -q -dim 0.8 -fn "Tewi:size=9" -h 20 -nb "$background" -nf "$foreground" -sb "$color5" -sf "$color15"
