#! /bin/bash
{
notify-send "Video Loading" "Please Stand By..."
mpv --playlist=- $1 && exit 0
notify-send "ERROR" "Could Not Play"
exit 1
} &>/dev/null
