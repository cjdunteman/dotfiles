#!/bin/bash

set -euo pipefail

DOTFILES_DIR="$HOME/dotfiles"
BACKUP_DIR="$HOME/.dotfiles-backup/$(date +%Y-%m-%d-%H%M%S)"

# Create backup dir
mkdir -p "$BACKUP_DIR"

# Function to symlink with backup
symlink_file() {
  local src="$1"
  local dest="$HOME/$(basename "$src")"

  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "Backing up $dest to $BACKUP_DIR"
    mv "$dest" "$BACKUP_DIR"
  elif [ -L "$dest" ]; then
    rm "$dest"  # Remove existing symlink
  fi

  ln -sf "$src" "$dest"
  echo "Symlinked $src -> $dest"
}

# Symlink all dotfiles (skip scripts, .git, etc.)
for file in "$DOTFILES_DIR"/.*; do
  base=$(basename "$file")
  if [[ "$base" != "." && "$base" != ".." && "$base" != ".git" && "$base" != "bootstrap.sh" && "$base" != "install.sh" ]]; then
    symlink_file "$file"
  fi
done

# Install Homebrew if missing
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew bundle

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Install starship
curl -sS https://starship.rs/install.sh | sh

# git config
git config --global user.name "CJ Dunteman"
git config --global user.email cjdunteman@gmail.com
git config --global core.excludesfile ~/dotfiles/.gitignore # global .gitignore
git config --global core.editor vim
git config --global init.defaultBranch main

# Install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Build Foundry from source
cargo install --git https://github.com/gakonst/foundry --bins --locked

# Source shell config
source "$HOME/.zshrc"
