#!/usr/bin/env bash

# Initialize wallpaper daemon
swww init &

# Set wallpaper
# swww img ~/Pictures/Wall/16.9/GianlucaGrisenti.OldHousesOnGreenHillsideBehindFoggyMountainInEveningi.png &
_conf_hyprpaper="$HOME/.config/hypr/hyprpaper.conf"
_wall_dir="$HOME/Pictures/Wall/16.9"
_wall_img="GianlucaGrisenti.OldHousesOnGreenHillsideBehindFoggyMountainInEveningi.png"

echo "preload = $_wall_dir/$_wall_img" >> $_conf_hyprpaper
echo "wallpaper = ,$_wall_dir/$_wall_img" >> $_conf_hyprpaper

hyprpaper &

# nm-applet --indicator &

waybar &

mako
