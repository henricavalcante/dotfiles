#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    brew install tmux
    brew install reattach-to-user-namespace
    brew install vim
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sudo apt-get install tmux
    sudo apt-get install vim
    sudo apt-get install curl
fi

mkdir NeoBundle
curl -o NeoBundle/install.sh https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh
sh ./NeoBundle/install.sh
