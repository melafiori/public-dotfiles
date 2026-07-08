# My personal dotfiles

Just made them so i can keep them in case i delete everything or something.

### What I use:
* **WM:** Hyprland
* **Terminal:** Kitty
* **Theme:** Matugen
* **Shell:** zsh

## Preview
<p align="center">
  <img src="screenshots/desktop-1.png" width="45%" />
  <img src="screenshots/desktop-2.png" width="45%" />
</p>

# Prerequisites

All the dotfiles were made to function on [Hyprland](https://github.com/hyprwm/Hyprland).

# Installation

```
git clone https://github.com/melafiori/public-dotfiles.git
cd public-dotfiles/
chmod +x ~/dotfiles/install.sh
install.sh
```
## ⚠️ Warning
This script will overwrite your existing configuration files in `~/.config/` by creating symlinks. **Please back up your current configs before running the script.**

# Troubleshooting
### Note:
This script uses `rm -rf` to replace existing files. Be careful with scripts you run from the internet!
