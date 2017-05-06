# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=/home/nstefani/.oh-my-zsh

ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dnf pip virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=es_AR.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#virtualenvwrapper init
export WORKON_HOME=$HOME/.Envs
export PROJECT_HOME=$HOME/Codigo
source /usr/bin/virtualenvwrapper.sh

# Aliases
eval "$(thefuck --alias)"
alias ls='ls --color=auto'
alias meteo='curl http://wttr.in/cordoba?lang=es'
alias tmux='tmux -2'
alias srvt='ssh 192.168.0.250'

#SSH 
alias don='~/Codigo/scripts/sshDon.sh'
alias ocean='~/Codigo/scripts/sshOcean.sh'   
alias work='ssh 190.210.81.237 -p9191'

#Call script for download subs 
alias download='~/Codigo/scripts/download_sub.sh'

#Default Editor
export EDITOR="vim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -z "$TMUX" ] && export TERM=xterm-256color && exec tmux
