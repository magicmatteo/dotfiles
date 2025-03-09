# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="jispwoso"


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	extract
	kubectx
	zsh-autosuggestions
	zsh-syntax-highlighting
	git
	azure
	)

# Autocompletes
source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)
source ~/.zsh_custom/autocompletion/az.completion
source <(nerdctl completion zsh)
source <(helm completion zsh)
complete -o nospace -C /usr/local/bin/terraform terraform

# **********************************
# ENV VARS
# **********************************

# Golang
export GOROOT="/usr/local/go"
export GOPATH=$HOME/go

# System
export VISUAL=nvim
export EDITOR=nvim
export LANG=en_AU.UTF-8

# PATH updates
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export PATH="$PATH:/home/matt/.dotnet/tools"
export PATH="$PATH:~/.local/bin"
export PATH=$PATH:/snap/bin
export PATH=$PATH:$HOME/repos/dotfiles/scripts
# Rancher Desktop
export PATH=$PATH:$HOME/.rd/bin

# My env vars
export SECOND_BRAIN="$HOME/Documents/Second-Brain"
export REPOS="$HOME/repos"
export DOTFILES="$REPOS/dotfiles"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias k="kubectl"
alias tf="terraform"
alias ez="nvim ~/.zshrc"
alias cl="clear"
alias untar="tar -zxvf"
#alias docker="nerdctl"
alias nc="sudo nerdctl"
alias copy="xclip -sel clip"
alias acd="argocd --insecure"
alias fe="cd /home/matt/repos/kolmeo-meta/kolmeo-feature-environments"
alias km="cd $REPOS/kolmeo-meta"
alias v="nvim"
alias sb="cd $SECOND_BRAIN"
alias in="cd $SECOND_BRAIN/0-INBOX/"
alias df="cd $DOTFILES"
alias ll="ls -la"

# Below line allows us to load functions from the path specified
# fpath=( "/home/matt/.zsh_custom/functions" "${fpath[@]}" )

autoload -U +X bashcompinit && bashcompinit
# Allow zsh completion
autoload -U compinit; compinit

# NVM (node version manager) required
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
