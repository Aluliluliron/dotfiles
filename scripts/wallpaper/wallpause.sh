#!/bin/bash

while :
do
	if [[ ! -z $(pgrep wine) ]]
	then
		bash $HOME/.scripts/wallpaper/mpvctl.sh pause
	elif [[ -z $(pgrep wine) ]]
	then
		bash $HOME/.scripts/wallpaper/mpvctl.sh play
	fi

	sleep 1

done
