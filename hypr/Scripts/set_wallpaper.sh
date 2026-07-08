#!/bin/bash

# Ensure a path was actually passed
if [ -z "$1" ]; then
    exit 1
fi

NEW_WALLPAPER="$1"
SYMLINK_PATH="$HOME/.config/hypr/current_wallpaper"

# Forcefully remove the old symlink and create a new one
ln -sf "$NEW_WALLPAPER" "$SYMLINK_PATH"
