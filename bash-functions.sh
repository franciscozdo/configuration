# Functions defifnitions

studies_path=~/Studia
projects_path=~/Projekty

function load_session() {
  dir=$1
  name=$2

  tmux has-session -t $name
  if [ "$?" -eq "0" ]; then 
    tmux attach -t $name
  else
    tmux new-session -s $name -c $dir -n run -d
    tmux new-window -t $name -c $dir -n code
    tmux attach -t $name
  fi
}

function studia() {
  if [ "$1" = "" ] || [ "$2" = "" ]; then
    echo Podaj kierunek oraz przedmiot.;
    return 1
  fi

  name=$1/$2
  dir=$studies_path/$name
  
  if [ ! -d $dir ]; then
    mkdir -p $dir
  fi

  load_session $dir $name
}

function project() {
  if [ "$1" == "" ]; then 
    echo Podaj nazwę projektu
    return 1
  fi

  proj=$1
  dir=$projects_path/$proj

  if [ ! -d $dir ]; then
    echo Project $proj does not exist.
    return 1
  fi

  load_session $dir $proj
}
