#!/bin/bash

if [ "$1" = ""]; then
  echo "Usage: ..."
  exit 1
fi

# change theme for kitty
rm ~/.config/kitty/theme.conf
ln -s ~/.config/kitty/themes/3024_Day.conf ~/.config/kitty/theme.conf

# change theme for vim 
rm ~/.vimrc
ln -s ~/configuration/.vimrc ~/.vimrc

# chenge bashrc
