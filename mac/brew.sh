printf "Beginning brew script"

# Install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install formulae
brew install zsh
brew install wget
brew install git
brew install tree
brew install pyenv
brew install node
brew install gh

# Install casks
brew install --cask brave-browser
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask microsoft-word
brew install --cask discord
brew install --cask postman
brew install --cask adobe-acrobat-reader
brew install --cask bitwarden

# Upgrade already-installed formulae.
brew upgrade
