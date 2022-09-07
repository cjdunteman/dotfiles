printf "STARTING UNBUNTU INSTALL SCRIPT."

sudo apt update && sudo apt upgrade

# Download zsh and set as default shell
sudo apt install zsh
chsh -s /usr/bin/zsh

# Download misc tools
sudo apt install vim
sudo apt install wget
sudo apt install git
sudo apt install tree
sudo apt install curl
sudo apt install bat

sudo apt install gnupg
sudo apt install xclip

# python packages
# sudo apt install python3-pip
# pip3 install --user --upgrade pip
# pip3 install jupyterlab
# pip3 install tensorflow

# ides and editors
sudo snap install --classic code
