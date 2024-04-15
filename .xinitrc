#!/bin/sh

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

# set keyboard layout
setxkbmap tr

# set wallpaper
feh --bg-scale ~/wallpaper.jpg &

# start notification deamon
dunst -conf ~/.config/dunst/dunstrc &

prime-switch

exec i3
