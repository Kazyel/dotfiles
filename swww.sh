#!/bin/bash

# Check if swww is installed
if ! command -v swww &> /dev/null
then
    echo "swww could not be found, please install it first."
    exit 1
fi

# Define wallpaper directory
WALLPAPER_DIR="$HOME/Pictures/swww.jpeg"

# Start swww with the wallpaper directory
swww img "$WALLPAPER_DIR"

