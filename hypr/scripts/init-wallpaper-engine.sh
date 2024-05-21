#!/usr/bin/env bash

#-+=+------------------------------------------+=+-#
#-+=+-: Hyprland.Scripts.InitWallpaperEngine :-+=+-#
#-+=+------------------------------------------+=+-#

engine=$(cat $HOME/.config/.settings/wallpaper-engine.sh)

if [ "$engine" == "swww" ]; then
    echo ":: Using `swww`"
    swww init
    swww-daemon --format xrgb
    sleep 0.5
    $HOME/.config/.settings/wallpaper.sh init
elif [ "$engine" == "hyprpaper" ]; then
    echo ":: Using `hyprpaper`"
    sleep 0.5
    $HOME/.config/.settings/wallpaper.sh init
else
    echo ":: Wallpaper Engine disable"
    $HOME/.config/.settings/wallpaper.sh init
fi
