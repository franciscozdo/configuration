HISTSIZE=10000
HISTFILESIZE=10000
HISTTIMEFORMAT="%d/%m/%Y %T "

# Append to history file
shopt -s histappend

# Don't save duplicates
HISTCONTROL=ignoredups:erasedups

# Don't save this commands to history
HISTIGNORE="ls:ps:man"
