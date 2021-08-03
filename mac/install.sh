# Install xcode command line tools
xcode-select --install

touch ~/.zshrc
ln -sv ~/repos/dotfiles/mac/.zshrc ~

# Run brew commands
source mac/brew.sh

# Run npm commands
source mac/npm.sh
