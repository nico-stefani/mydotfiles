export ZSH=/home/nstefani/.oh-my-zsh

ZSH_THEME="mrtazz"
DISABLE_AUTO_TITLE=true

#Plugins 
plugins=(git dnf pip docker docker-compose rsync)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=es_AR.UTF-8

# PATH additions
PATH=$PATH:~/.local/bin:~/.pyenv/bin:~/.go/bin

# PYENV setup
export PYENV_ROOT=~/.pyenv
eval "$(pyenv init -)"

#virtualenvwrapper init
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source ~/.local/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.Envs
export PROJECT_HOME=$HOME/Projects

# GO Path
export GOPATH=$HOME/.go

# Aliases
eval "$(thefuck --alias)"
alias ls='ls --color=auto'
alias meteo="curl 'http://wttr.in/cordoba?lang=es'"
alias tmux='tmux -2'
alias vim='nvim'
alias pip='pip3'

#Call script for download subs 
alias download='~/Projects/scripts/download_sub.sh'

#Default Editor
export EDITOR="nvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#[ -z "$TMUX" ] && export TERM=xterm-256color && exec tmux
