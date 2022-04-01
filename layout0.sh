#!/bin/sh
#turn off monitor screen and use UW

xrandr --dpi 120 --output eDP1 --off --output DP1 --off --output DP2 --off --output HDMI1 --primary --mode 3440x1440 --rate 60 --pos 0x0 --rotate normal --output HDMI2 --off --output VIRTUAL1 --off
