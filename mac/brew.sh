printf "Beginning brew script"

# Install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Update Homebrew
brew update

# Install formulae
brew install zsh
brew install wget
brew install git
brew install tree
brew install node
brew install gh
brew install bat
brew install nvm

# Upgrade already-installed formulae.
brew upgrade
