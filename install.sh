#!/bin/bash

rm -rf ~/.vim
ln -sv ~/repos/dotfiles/.vim/ ~

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	source linux/linux_setup.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
	source mac/mac_setup.sh
fi
