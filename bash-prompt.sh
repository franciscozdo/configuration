# creating shell prompt

#red="\[\033[00;31m\]"
#green="\[\033[00;32m\]"
#blue="\[\033[00;34m\]"
#color_reset="\[\033[00m\]"

color_reset="\[$(echo -en '\033[0m')\]"
color_red="\[$(echo -en '\033[00;31m')\]"
color_green="\[$(echo -en '\033[00;32m')\]"
color_yellow="\[$(echo -en '\033[00;33m')\]"
color_blue="\[$(echo -en '\033[00;34m')\]"
color_magenta="\[$(echo -en '\033[00;35m')\]"
color_purple="\[$(echo -en '\033[00;35m')\]"
color_cyan="\[$(echo -en '\033[00;36m')\]"
color_lightgraY="\[$(echo -en '\033[00;37m')\]"
color_lred="\[$(echo -en '\033[01;31m')\]"
color_lgreen="\[$(echo -en '\033[01;32m')\]"
color_lyellow="\[$(echo -en '\033[01;33m')\]"
color_lblue="\[$(echo -en '\033[01;34m')\]"
color_lmagenta="\[$(echo -en '\033[01;35m')\]"
color_lpurple="\[$(echo -en '\033[01;35m')\]"
color_lcyan="\[$(echo -en '\033[01;36m')\]"
color_white="\[$(echo -en '\033[01;37m')\]"

USER_P="$color_green\u$color_reset"
DIR_P="$color_lyellow\w$color_reset"
GIT_P=""
PROMPT_SYMBOL=">"
PROMPT_P=$PROMPT_SYMBOL

make_git() {
  local sha1
  sha1=$(git rev-parse --short HEAD 2>&1)
  if [ $? -eq 0 ]; then
    local color_symref=$color_green
    local color_ref=$color_blue
    local dirty=$(git status --porcelain 2>&1)
    if [ ! -z "$dirty" ]; then
      color_symref=$color_red
      color_ref=$color_red
      dirty='*'
    fi
    GIT_P=" $color_symref($(git symbolic-ref --quiet --short HEAD)$dirty)$color_reset"
    if [ $? -ne 0 ]; then
      GIT_P=" $color_ref[$sha1$dirty]$color_reset"
    fi
  else
    GIT_P=""
  fi
}

make_status () {
  if [ "$1" -eq "0" ]; then
    PROMPT_P=$PROMPT_SYMBOL
  else
    PROMPT_P="$color_red$PROMPT_SYMBOL$color_reset"
  fi
}

make_host () {
  if [ "$HOSTNAME" == "thinkpad" ];then
    HOST_P=""
  else
    HOST_P="$color_magenta[$HOSTNAME:$USERNAME]$color_reset "
  fi
}

make_prompt () {
  make_status $?
  make_git
  make_host
  #PS1="$USER_P $DIR_P $GIT_P\n$PROMPT_P "
  PS1="$HOST_P$DIR_P$GIT_P $PROMPT_P "
}

PROMPT_COMMAND=make_prompt
