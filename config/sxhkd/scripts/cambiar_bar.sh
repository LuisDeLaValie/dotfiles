#!/usr/bin/env dash

changethemes(){
    theme="/home/bspwmemilio/.Developer/polybar-themes/$1"
    
    rm -r $HOME/.config/polybar/*
    cp -r $theme/* $HOME/.config/polybar
    cp -r $theme/fonts/* $HOME/.local/share/fonts
    fc-cache -v
    $HOME/.config/polybar/launch.sh
}

case "$1" in
	1) changethemes "polybar-base" ;;
    2) changethemes "polybar-1" ;;
    3) changethemes "polybar-5" ;;
    4) changethemes "polybar-13" ;;

esac