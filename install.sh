#!/bin/bash

ln -sv ~/repos/dotfiles/.vimrc ~

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	source linux/setup.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
	source mac/setup.sh
fi
