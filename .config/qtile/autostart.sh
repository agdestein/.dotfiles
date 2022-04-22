#!/bin/bash

xset r rate 300 50
setxkbmap -option caps:escape
unclutter --timeout 1 --ignore-scrolling &

picom --experimental-backends &> /dev/null & 
dunst &
# conky &

nitrogen --restore
