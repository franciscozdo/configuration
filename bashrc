HISTCONTROL=ignoreboth
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# custom prompt
source ~/configuration/bash-prompt.sh

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


# Alias definitions.
alias bashconfig="vim ~/.bashrc; . ~/.bashrc"
alias ll="ls -alh"
alias glog="git log --all --graph --decorate --oneline"
alias gitl="git log --all --graph --decorate"
alias gits="git status"
alias vi="vim"
alias poweroff="systemctl poweroff"
alias reboot="systemctl reboot"
alias cls="clear"

# Helpful functions.
function tmux-new() {
  tmux new-session -s $1 -c ~/Studia/II/$1 -n run -d
  tmux new-window -t $1 -c ~/Studia/II/$1 -n code
  tmux attach -t $1
}
