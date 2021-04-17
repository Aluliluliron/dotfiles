#!/usr/bin/env bash

zscroll -u true -l 20 -d 0.25 -M "mpc status" -m "playing" \
		"-b ''" -m "paused" "-b '' -s false" "mpc current" &

wait
