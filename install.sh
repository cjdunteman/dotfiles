os_name="$(uname -s)"

if [ "$os_name" == "Darwin" ]
then
    printf "Detected macOS."
    # MAC INSTALL
#    source mac/install.sh
elif [ "$os_name" == "Linux" ]
then
    printf "Detected Ubuntu."
    # UBUNTU INSTALL
    source ubuntu/install.sh
else
    printf "This script is only for macOS or Ubuntu."
fi


# UNIVERSAL SETUP
ln -s -f ~/dotfiles/.vimrc ~/.vimrc
touch ~/.zshrc
ln -s -f ~/dotfiles/.zshrc ~/.zshrc
ln -s -f ~/dotfiles/.profile ~/.profile

## git config
git config --global user.name "CJ Dunteman"
git config --global user.email cjdunteman@gmail.com
git config --global core.exclusefile ~/dotfiles/.gitignore # global .gitignore
git config --global core.editor vim
git config --global init.defaultBranch main

# activate zsh configuration
source ~/.zshrc


# Install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install starship
cargo install starship --locked
