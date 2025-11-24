#!/bin/bash

set -euo pipefail

REPO_URL="https://github.com/cjdunteman/dotfiles.git"
DOTFILES_DIR="$HOME/dotfiles"

# Check for MacOS and install Git if missing
OS="$(uname -s)"
if [ "$OS" = "Darwin" ]; then # MacOS
  if ! command -v git >/dev/null 2>&1; then
    xcode-select --install
    echo "Installing Xcode Command Line Tools... Press enter when done."
    read -r
  fi
else
  echo "Unsupported OS: $OS"
  exit 1
fi

# Clone repo if it doesn't exist already
if [ ! -d "$DOTFILES_DIR" ]; then
  git clone "$REPO_URL" "$DOTFILES_DIR"
fi

# Run install script
cd "$DOTFILES_DIR"
bash install.sh

echo "Dotfiles installed! Restart Terminal or source your shell config."