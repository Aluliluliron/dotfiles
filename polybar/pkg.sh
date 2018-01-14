#!/bin/bash

pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)
icon=""

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
    echo "$icon $pac %{F#5b5b5b}%{F-} $aur"
fi
