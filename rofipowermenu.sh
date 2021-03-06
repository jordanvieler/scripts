#!/bin/bash

rofi_command="rofi -theme powermenu.rasi"

#### Options ###
power_off=""
reboot=""
lock=""
suspend=""
log_out=""
# Variable passed to rofi
options="$power_off\n$reboot\n$lock\n$suspend\n$log_out"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $lock)
       	i3lock -u -c 000000
        ;;    
    $power_off)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $suspend)
	systemctl suspend
        ;;
    $log_out)
    	i3-msg exit
        ;;
esac
