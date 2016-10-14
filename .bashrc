    #
    # /etc/bash.bashrc
    #
    # This file is the systemwide bashrc file. While most of the
    # environment is preserved when running an interactive shell
    # the PS[1-4] variables, aliases and functions are reset.
    #
    # When running a non-login shell, apply the following settings:
    # - Prompt defaults (PS[1-4], PROMPT_COMMAND)
    # - bash_completion if it exists
    # - source /etc/bash.bashrc.local
     
    # Shell Style
    #PS1='[\u@\h \W]\$ '				# Old, colorless prompt.
    #PS1='\[\e[1;34m\][\u@\h \W]\$\[\e[0m\] '	# New, colorful, blue prompt.
    #PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '	# New, colorful, green prompt.
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
    alias ls='ls --color=auto'
    alias meteo='curl http://wttr.in/cordoba'
    alias don='~/Codigo/scripts/sshDon.sh'
    alias ocean='~/Codigo/scripts/sshOcean.sh'   
    alias tmux='tmux -2'
    #Git alias
    alias gits='git status'
    alias gitp='git pull'
    alias gitg="log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'' %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all '"
    
    #Call script for download subs 
    alias download='~/Codigo/scripts/download_sub.sh'

    # Default Editor
    export EDITOR="vim"
     
    # Auto tab-completion for sudo commands
    complete -cf sudo
