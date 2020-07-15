export ZSH="/home/paco/.oh-my-zsh"
ZSH_THEME="gnzh"
plugins=(git git-prompt colored-man-pages)

source $ZSH/oh-my-zsh.sh

alias bashconfig="vim ~/.bashrc; . ~/.bashrc"
alias gcc="gcc -std=c11 -Wall -Wextra"
alias ll="ls -alh"
alias glog="git log --all --graph --decorate"
alias gits="git status"
alias vi="vim"
alias poweroff="systemctl poweroff"
alias reboot="systemctl reboot"
alias cls="clear"

export GOBIN=/home/paco/go/bin
export PATH=$PATH:/usr/local/go/bin:/home/paco/go/bin

