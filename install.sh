#!/bin/bash

rm -rf ~/.vimrc
ln -sv ~/repos/dotfiles/.vimrc ~

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	source linux/linux_setup.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
	source mac/mac_setup.sh
else
    echo "Unable to detect operating system."
fi
