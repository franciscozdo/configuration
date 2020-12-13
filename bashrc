HISTCONTROL=ignoreboth
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
HISTTIMEFORMAT="%m/%d/%Y %T "

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
CONFIGURATION_DIR=~/configuration

# custom prompt
source $CONFIGURATION_DIR/bash-prompt.sh

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

# enable completion
if [ -f /etc/profile.d/bash_completion.sh ]; then
  source /etc/profile.d/bash_completion.sh 
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

#Aliases definitions
if [ -f ~/.bash-aliases ]; then 
  source ~/.bash-aliases
fi

# Helpful functions.
if [ -f ~/.bash-functions ]; then
  source ~/.bash-functions
fi

# for colored manpages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
