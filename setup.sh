#!/bin/bash

# Exit on error
set -e

if [ "$(pwd)" != "$HOME/dotfiles" ]; then
    echo "Error: This script must be run from the ~/dotfiles directory."
    exit 1
fi

echo "Setting up development environment..."

# Copy zsh configuration
echo "Copying zsh configuration..."
cp ~/dotfiles/.zshrc ~/.zshrc

echo "Sourcing zsh configuration..."
source ~/.zshrc

# Create necessary directories
echo "Creating Vim directories..."
mkdir -p ~/.vim/{backups,bundle,colors,swap}

# Copy Vim configuration
echo "Copying Vim configuration..."
cp ~/dotfiles/.vimrc ~/.vimrc

# Install Homebrew if not already installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Add Homebrew to PATH for the current session
    #eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo "Sourcing zsh configuration..."
source ~/.zshrc

# Install Homebrew packages
echo "Installing Homebrew packages..."
brew bundle --file=~/dotfiles/Brewfile

# Create development directory structure
echo "Creating development directory structure..."
mkdir -p ~/dev/{code,temp,study}

# Install oh-my-zsh if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "Setup complete."
echo ""
echo "Next steps:"
echo "1. Import iterm2.json into iTerm2 preferences"
echo "2. Import cursor.json into Cursor preferences"
echo "3. Install jetbrains / webstorm / goland / datagrip and login.
