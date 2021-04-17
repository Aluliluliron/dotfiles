#!/bin/bash

# Terminate already running bar instances
killall -q polybar

export POLY_BG1=#E52d2d2d
export POLY_BG2=#E5393939
export POLY_GREY1=#EE515151
export POLY_GREY2=#EE747369
export POLY_SIL1=#EEa09f93
export POLY_SIL2=#EEd3d0c8
export POLY_WHITE1=#EEe8e6df
export POLY_WHITE2=#EEf2f0ec
export POLY_RED=#EEf2777a
export POLY_ORANGE=#EEf99157
export POLY_YELLOW=#EEffcc66
export POLY_GREEN=#EE99cc99
export POLY_CYAN=#EE66cccc
export POLY_BLUE=#EE6699cc
export POLY_PURPLE=#EEcc99cc
export POLY_BROWN=#EEd27b53

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
MONITOR=LVDS polybar -r i3 &
MONITOR=HDMI-0 polybar -r i3 &
MONITOR=DVI-D-0 polybar -r i3 &

echo "Bars launched..."
