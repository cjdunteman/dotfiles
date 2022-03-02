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


# UNIVERSAL INSTALL
ln -s -f ~/dotfiles/.vimrc ~/.vimrc
ln -s -f ~/dotfiles/.bashrc ~/.bashrc
ln -s -f ~/dotfiles/.profile ~/.profile

git config --global core.exclusefile ~/dotfiles/.gitignore # global .gitignore

source ~/.bashrc


# Install rustup
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Build Foundry from source
#cargo install --git https://github.com/gakonst/foundry --bins --locked
cargo install starship --locked
