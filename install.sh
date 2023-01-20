
chsh -s $(which zsh)

if [ "$(uname)" == "Darwin" ]; then
    # MAC INSTALL
    printf "Detected macOS."
    source mac/install.sh
elif [ "$(uname)" == "Linux" ]; then
    # UBUNTU INSTALL
    printf "Detected Ubuntu."
    source ubuntu/install.sh
else
    printf "This script is only for macOS or Ubuntu."
fi

#################
#
# UNIVERSAL SETUP
#
#################

# symlinks for dot files
ln -s -f .vimrc ~/.vimrc
ln -s -f .bashrc ~/.bashrc
ln -s -f .profile ~/.profile

# git config
git config --global user.name "CJ Dunteman"
git config --global user.email cjdunteman@gmail.com
git config --global core.excludesfile ~/dotfiles/.gitignore # global .gitignore
git config --global core.editor vim
git config --global init.defaultBranch main

# activate zsh configuration
source ~/.bashrc

# Install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Build Foundry from source
cargo install --git https://github.com/gakonst/foundry --bins --locked

# Install starship
cargo install starship --locked
