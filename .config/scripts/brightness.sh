#!/bin/bash

# You can call this script like this:
# $./brightness.sh up
# $./brightness.sh down

function get_brightness {
    brightnessctl get
}

function send_notification {
    DIR=`dirname "$0"`
    brightness=`get_brightness`
    icon_name="/usr/share/icons/Faba/48x48/notifications/notification-display-brightness.svg"
    bar=$(seq -s "─" $((brightness / 6000)) | sed 's/[0-9]//g')
    # Send the notification
    $DIR/notify-send.sh "$((brightness / 6000))""     ""$bar" -i "$icon_name" -t 2000 -h int:value:"$brightness" -h string:synchronous:"$bar" --replace=555
}

case $1 in
    up)
    brightnessctl s 8000+
	send_notification
	;;
    down)
	brightnessctl s 8000-
	send_notification
	;;
esac
