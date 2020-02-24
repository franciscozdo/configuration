#!/bin/bash

#changes theme 
# options: 
#   -presentation -p  - presentation mode (high contrast and light)
#   -normal       -n  - normal mode (dark)

config_path=~/configuration/themes
mode=$1
if [ "$1" = "" ] || [ "$1" = "-n" ]; then 
  mode=-normal
elif [ "$1" = "-p" ]; then
  mode=-presentation
fi

ln -f $config_path/termite$mode ~/.config/termite/config
ln -f $config_path/vimrc$mode ~/.vimrc
#ln -f $config_path/zshrc$mode ~/.zshrc

