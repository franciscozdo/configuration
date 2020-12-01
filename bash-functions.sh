# Functions defifnitions

function studia() {
  if [ "$1" = "" ] || [ "$2" = "" ]; then
    echo Podaj kierunek oraz przedmiot.;
    return 1
  fi

  name=$1/$2
  dir=~/Studia/$name
  if [ ! -d $dir ]; then
    mkdir -p $dir
  fi

  tmux has-session -t $name
  if [ "$?" -eq "0" ]; then 
    tmux attach -t $name
  else
    tmux new-session -s $name -c ~/Studia/$1/$2 -n run -d
    tmux new-window -t $name -c ~/Studia/$1/$2 -n code
    tmux attach -t $name
  fi
}
