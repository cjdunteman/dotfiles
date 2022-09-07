# Install xcode command line tools
xcode-select --install

# Install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Update Homebrew
brew update

# Install formulae
brew install wget
brew install git
brew install tree
brew install curl
brew install bat

brew install gh
brew install nvm

# Upgrade already-installed formulae
brew upgrade
