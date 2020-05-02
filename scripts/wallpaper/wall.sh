#!/bin/bash

killall -9 xwinwrap

rm -rf /tmp/mpv/*

xwinwrap -ov -ni -fs -- mpv --input-ipc-server=/tmp/mpv --no-audio -wid WID --keepaspect=yes --shuffle --loop-playlist --loop ~/Wallpapers/3gp/pixels*.3gp &
