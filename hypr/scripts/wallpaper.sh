#!/usr/bin/env bash

#-+=+---------------------------------------+=+-#
#-+=+-: Hyprland.Config.Scripts.Wallpaper :-+=+-#
#-+=+---------------------------------------+=+-#

# TODO: Write `$HOME/.config/.settings/blur.sh`
# TODO: Write `$HOME/.config/waybar/scripts/launch.sh`

# Cache the current wallpaper
cache_current="$HOME/.cache/wallpaper_current"
cache_blurred="$HOME/.cache/wallpaper_blurred.png"
cache_square="$HOME/.cache/wallpaper_square.png"
cache_rasi="$HOME/.cache/wallpaper_current.rasi"

script_blur="$HOME/.config/.settings/blur.sh"

blur="50x30"
blur=$(cat $script_blur)

# Create the cache file, if not existing
if [ ! -f $cache_current ]; then
    touch $cache_current
    echo "$HOME/wallpaper/default.jpg" > "$cache_current"
fi

# Create the rasi file, if not existing
if [ ! -f $cache_rasi ]; then
    touch $cache_rasi
    echo "* { current-image: url(\"$HOME/wallpaper/default.jpg\", height); }" > "$cache_rasi"
fi

# Set wallpaper
wallpaper_current=$(cat "$cache_current")

case $1 in
    # Set wallpaper, from .cache of last session
    "init")
        sleep 1
        if [ -f $cache_current ]; then
            wal -q -i $wallpaper_current
        else
            wal -q -i $HOME/wallpaper
    ;;

    # Set wallpaper, from `rofi` selection
    "select")
        sleep 0.2
        wallpaper_selected=$( find "$HOME/wallpaper" -type f \( -iname "*.jpg" -o -iname "*jpeg" -o -iname "*.png" \) -exec basename {} \; | sort -R | while read rfile
        do
            echo -en "rfile\x00icon\x1f$HOME/wallpaper/${rfile}\n"
        done | rofi -dmenu -i -replace -config $HOME/.config/rofi/config-wallpaper.rasi)
        if [ ! "$wallpaper_selected" ]; then
            echo "No wallpaper selected"
            exit
        fi
        wal -q -i $HOME/wallpaper/$wallpaper_selected
    ;;

    # Set wallpaper at random
    *)
        wal -q -i $HOME/wallpaper
    ;;
esac

# Set colorscheme
source "$HOME/.cache/wal/colors.sh"
echo ":: Wallpaper: $wallpaper_current"

# Get wallpaper image name
wallpaper_current_name=$(echo $wallpaper_current | sed "s|$HOME/wallpaper/||g")

# Reload `waybar` with new colors
$HOME/.config/waybar/scripts/launch.sh

