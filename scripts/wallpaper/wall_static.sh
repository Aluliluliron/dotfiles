#!/bin/bash
killall feh
killall compton
killall xwinwrap

NUM=$(( ( RANDOM % 12 )  + 1 ))

feh --bg-fill ~/Wallpapers/static/pixels$NUM.png
