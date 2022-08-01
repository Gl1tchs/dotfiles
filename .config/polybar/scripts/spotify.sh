#!/bin/sh

player_status=$(playerctl -p spotify status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    echo "Playing:  $(playerctl -p spotify metadata artist) - $(playerctl -p spotify metadata title)  "
elif [ "$player_status" = "Paused" ]; then
    echo "Paused:  $(playerctl -p spotify metadata artist) - $(playerctl -p spotify metadata title)  "
else
    echo "Not Playing  "
fi