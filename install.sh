
# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Set git config
git config --global user.name "CJ Dunteman"
git config --global user.email cjdunteman@gmail.com
git config --global core.excludesfile ~/dotfiles/.gitignore # global .gitignore
git config --global core.editor vim
git config --global init.defaultBranch main
