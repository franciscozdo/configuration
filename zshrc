export ZSH="~/.oh-my-zsh"
ZSH_THEME="gnzh"
plugins=(git git-prompt colored-man-pages)

source $ZSH/oh-my-zsh.sh

alias ll="ls -alh"
alias glog="git log --all --graph --decorate"
alias gitl="git log --all --graph --decorate --oneline"
alias gits="git status"
alias gitd="git diff ."
alias vi="vim"
alias poweroff="systemctl poweroff"
alias reboot="systemctl reboot"
alias cls="clear"
