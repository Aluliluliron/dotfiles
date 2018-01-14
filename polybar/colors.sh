#include "/home/direktor/.Xresources"
#!/bin/sh

set $COLOR_FG = xrdb:*foreground
set $COLOR1 = xrdb:*color1

export mpd="%{F$COLOR1}Colored%{F-}"
