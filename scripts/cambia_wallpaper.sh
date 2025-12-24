#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"
#WALLPAPER_DIR="/home/at/Pictures/wallpapers"
INTERVAL=300  # en segundos (5 minutos)

while true; do
    RANDOM_WALL=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
    pkill swaybg  # Mata el anterior
    swaybg -m fill -i "$RANDOM_WALL" &
    sleep $INTERVAL
done

