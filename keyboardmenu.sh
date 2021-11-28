#!/bin/bash

layout=$(echo -e "[Cancel]\nus\nno\nru\nfr" | rofi -dmenu -i)

if [[ $layout != "[Cancel]" ]]; then
    setxkbmap $layout 
fi
