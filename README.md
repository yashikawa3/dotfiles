# Dotfiles

## Pre-requisites

1. Download the `.ssh` files from my Google Drive folder.  
   https://drive.google.com/drive/folders/1el4zQu6K6LydDGJ-A1BezZv7UA7F4t-x

## Installation

1. Ensure the `.ssh` files are correctly placed in the home directory.
2. Navigate to the directory containing the dotfiles.
3. Run the `install.sh` script to install the required tools and configurations:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

## Changing the Log-in Shell

For this dotfiles setup, I recommend using the `fish` shell. If you haven't set `fish` as your default login shell yet, you can follow these steps to change it:

1. Append the output path from the previous command to /etc/shells. This requires administrator permissions:
   ```bash
   echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
   ```
2. Change your login shell to `fish`:
   ```bash
   chsh -s /path/to/fish
   ```

## Dracula Theme for iTerm and Wallpaper Setup

1. Setting up Dracula Theme for iTerm.  
   Open iTerm, navigate to Preferences > Profiles > Text > Color Presets... and import the theme file you downloaded.

2. Setting up Dracula Wallpaper.  
   Use the images from the wallpaper directory to set your desired wallpaper.