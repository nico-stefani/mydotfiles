# PATH additions
set PATH $PATH ~/.local/bin

# PYENV setup
set PYENV_ROOT $HOME/.pyenv
set -x PYENV_SHELL fish
set -gx PATH $PYENV_ROOT/bin $PATH
#source (pyenv init -|psub)

set -x WORKON_HOME $HOME/.venvs
set PROJECT_HOME $HOME/Codigo

# Aliases
alias tmux='tmux -2'
alias vim='nvim'
alias l='ls -la'

#Call script for download subs
alias download='~/Codigo/scripts/download_sub.sh'

#Default Editor
export EDITOR="nvim"

#[ -z "$TMUX" ] && export TERM=xterm-256color && exec tmux

eval (thefuck --alias | tr '
' ';')
