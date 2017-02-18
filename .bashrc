PS1='\[\e[1;34m\][\[\e[1;31m\]\u\[\e[1;34m\]@\[\e[1;31m\]\h \[\e[1;34m\]\w \[\e[1;32m\]#\# \[\e[1;34m\]:\[\e[1;32m\] \t\[\e[1;34m\]]\$\[\e[0m\] '
PS2='> '
PS3='> '
PS4='+ '
 
export PS1 PS2 PS3 PS4
 
if test "$TERM" = "xterm" -o \
        "$TERM" = "xterm-color" -o \
        "$TERM" = "xterm-256color" -o \
        "$TERM" = "rxvt" -o \
        "$TERM" = "rxvt-unicode" -o \
        "$TERM" = "xterm-xfree86"; then
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
    export PROMPT_COMMAND
fi
 
[ -r /etc/bash_completion   ] && . /etc/bash_completion
[ -r /etc/bash.bashrc.local ] && . /etc/bash.bashrc.local

#virtualenvwrapper init
export WORKON_HOME=$HOME/.Envs
export PROJECT_HOME=$HOME/Codigo
source /usr/bin/virtualenvwrapper.sh

#Powerline configuration 
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi 

# Aliases
eval "$(thefuck --alias)"
alias ls='ls --color=auto'
alias meteo='curl http://wttr.in/cordoba?lang=es'
alias tmux='tmux -2'
alias srvt='ssh 192.168.0.250'

#SSH 
alias don='~/Codigo/scripts/sshDon.sh'
alias ocean='~/Codigo/scripts/sshOcean.sh'   
alias lace='ssh 190.210.81.237 -p9191'

#Git alias
alias gits='git status'
alias gitp='git pull'
alias gitg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all "

#Call script for download subs 
alias download='~/Codigo/scripts/download_sub.sh'

#Default Editor
export EDITOR="vim"
 
# Auto tab-completion for sudo commands
complete -cf sudo

