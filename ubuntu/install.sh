printf "STARTING UNBUNTU INSTALL SCRIPT."

sudo apt install vim
sudo apt install xclip
sudo apt install git
sudo apt install nodejs
sudo apt install tree
sudo apt install curl
sudo apt install wget
sudo apt install gnupg

# java
sudo apt install openjdk-11-jdk

# rust lang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# web dev
sudo apt install nodejs
sudo apt install npm
npm install -g gatsby-cli

# python packages
sudo apt install python3-pip
pip3 install --user --upgrade pip
pip3 install --user --upgrade jupyter

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \ "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \ $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world

# applications
sudo snap install discord
sudo snap install --classic code
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb
sudo apt install ./slack-desktop-*.deb
sudo snap install spotify
sudo snap install bitwarden

# other
sudo snap install htop

# configurations
git config --global core.editor "vim"

source ubuntu/symlinks.sh
