# Functions defifnitions

function tmux-new() {
  tmux new-session -s $1 -c ~/Studia/II/$1 -n run -d
  tmux new-window -t $1 -c ~/Studia/II/$1 -n code
  tmux attach -t $1
}
