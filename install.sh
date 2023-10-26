#!/bin/bash
DOTPATH=~/dotfiles

# Starting installation message
echo "Beginning dotfiles installation..."

# Update submodules
echo "Updating submodules..."
git submodule update --init --recursive

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

# Install fisher using fish shell
fish -c "
if not functions -q fisher
    echo 'Installing Fisher...'
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
    echo 'Fisher installed successfully.'
end

echo 'Installing Dracula theme for Fish...'
fisher install dracula/fish
echo 'Dracula theme installed successfully.'
"
# Install vim-jetpack if not already installed
if [ ! -f ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim ]; then
    echo "Installing vim-jetpack..."
    curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
else
    echo "vim-jetpack is already installed."
fi

# Linking dotfiles to the home directory
echo "Linking main dotfiles to the home directory..."
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitmodules" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    [[ "$f" == ".config" ]] && continue
    ln -snv "$DOTPATH/$f" "$HOME/$f"
done
echo "Main dotfiles linked."

# Linking specific files within .config and other directories
echo "Linking specific files and directories..."
ln -snvf "$DOTPATH/.config/fish/config.fish" "$HOME/.config/fish/config.fish"
# Add other specific links as needed in the future
echo "Specific files and directories linked successfully."

# Completion message for the installation script
echo "Dotfiles installation complete."
