#!/bin/bash
DOTPATH=~/dotfiles

# Starting installation message
echo "Beginning dotfiles installation..."

# Check if Homebrew is installed and install if not
if ! command -v brew &>/dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # Add Homebrew to the shell environment after installing
    eval "$(/opt/homebrew/bin/brew shellenv)"
    echo "Homebrew installation complete."
else
    echo "Homebrew is already installed."
fi

# Using Brewfile to install packages and applications
echo "Installing packages and applications from Brewfile..."
brew bundle
echo "Installation from Brewfile complete."

# Linking dotfiles to the home directory
echo "Linking dotfiles to home directory..."
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitmodules" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    ln -snv "$DOTPATH/$f" "$HOME/$f"
done
echo "Dotfiles linked successfully."


# Completion message for the installation script
echo "Dotfiles installation complete."
