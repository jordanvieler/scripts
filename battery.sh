#!/bin/bash

BAT=$(cat /sys/class/power_supply/BAT0/capacity)
echo $BAT
# Set urgent flag below 5% or use orange below 20%
[ ${BAT%?} -le 5 ] && exit 33
[ ${BAT%?} -le 20 ] && echo "#FF8000"

exit 0
