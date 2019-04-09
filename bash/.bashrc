#
# ~/.bashrc
#

# load aliases
if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

# load functions
if [ -f $HOME/.bash_functions ]; then
    . $HOME/.bash_functions
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ '

# load PS1
if [ -f $HOME/.bashrc.d/ps1 ]; then
    . $HOME/.bashrc.d/ps1
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
