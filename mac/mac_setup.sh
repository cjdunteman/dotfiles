# Install xcode command line tools
xcode-select --install

touch ~/.zshrc
ln -sv ~/repos/dotfiles/mac/.zshrc ~

# Run brew commands
source brew.sh

# Run npm commands
source npm.sh
