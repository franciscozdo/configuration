CONFIGURATION_DIR=~/configuration

# Custom prompt
source $CONFIGURATION_DIR/bash-prompt.sh

# Enable completion
if [ -f /etc/profile.d/bash_completion.sh ]; then
  source /etc/profile.d/bash_completion.sh 
fi

# Aliases definitions
if [ -f ~/.bash-aliases ]; then 
  source ~/.bash-aliases
fi

# Helpful functions.
source $CONFIGURATION_DIR/bash-functions.sh

# Additional coloring info
source $CONFIGURATION_DIR/bash-colors.sh

# History managment
source $CONFIGURATION_DIR/bash-history.sh
