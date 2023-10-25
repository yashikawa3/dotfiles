#!/bin/bash

# Starting installation message
echo "Starting the installation of dotfiles..."

# Installing Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Homebrew installation completed."

# Add other installation or setup commands here...

# Completion message for the installation script
echo "Dotfiles installation completed."


