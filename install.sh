#!/bin/bash

# Get the directory where the script is located
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# List of files/folders to symlink
# Format: "source_in_repo:target_location"
FILES=(
    "hypr:$HOME/.config/hypr"
    "kitty:$HOME/.config/kitty"
    "matugen:$HOME/.config/matugen"
    "wofi:$HOME/.config/wofi"
    "waybar:$HOME/.config/waybar"
    "fastfetch:$HOME/.config/fastfetch"
    "waypaper:$HOME/.config/waypaper"
    "zshrc:$HOME/.zshrc"
)

echo "Starting dotfiles installation..."

for item in "${FILES[@]}"; do
    src="${DOTFILES_DIR}/${item%%:*}"
    dest="${item#*:}"

    # Ensure parent directory exists
    mkdir -p "$(dirname "$dest")"

    # Remove existing file/folder if it exists (but isn't already our symlink)
    if [ -e "$dest" ] || [ -L "$dest" ]; then
        echo "Removing existing $dest"
        rm -rf "$dest"
    fi

    # Create the symlink
    ln -s "$src" "$dest"
    echo "Linked: $dest -> $src"
done

echo "Done! Your dotfiles are installed."