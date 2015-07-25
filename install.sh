#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    brew install https://raw.github.com/Homebrew/homebrew-dupes/master/grep.rb
    brew install tmux
    brew install reattach-to-user-namespace
    brew install vim
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sudo apt-get install tmux
    sudo apt-get install vim
    sudo apt-get install curl
fi

git clone https://github.com/erikw/tmux-powerline.git ~/tmux-powerline

mkdir NeoBundle
curl -o NeoBundle/install.sh https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh
sh ./NeoBundle/install.sh
