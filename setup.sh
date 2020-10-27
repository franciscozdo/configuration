#!/bin/bash

echo -e "\e[31mWARNING!!!\e[0m"
echo -e "Your files:"
echo -e "       ~/.bashrc"
echo -e "       ~/.bash-aliases"
echo -e "       ~/.bash-functions"
echo -e "       ~/.inputrc"
echo -e "       ~/.tmux.conf"
echo -en "Will be \e[4;31mdeleted\e[0m! Do you want to continue? (N/y)"

read choice

if [ "$choice" == "y" ] || [ "$choice" == "Y" ]; then

  CONF_DIR=$(pwd)

  cd ~
  rm -f .bashrc .bash-aliases .bash-functions .inputrc .tmux.conf
  ln -s $CONF_DIR/bashrc .bashrc
  ln -s $CONF_DIR/inputrc .inputrc
  ln -s $CONF_DIR/bash-aliases.sh .bash-aliases
  ln -s $CONF_DIR/bash-functions.sh .bash-functions
  ln -s $CONF_DIR/tmux.conf .tmux.conf
else
  exit 1
fi
