# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="honukai"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(composer sublime symfony2 vagrant docker)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# exports
export EDITOR="vim"
export GOPATH=~/apps/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/.composer/vendor/bin
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export ANSIBLE_HOSTS=~/ansible_hosts
export ATLAS_TOKEN="FMA94_TXHbp5GJEwxLQUX-3rDyyUmU3t8ddGmvpxzXfzcgptssvJn9spgQSEToWcaqg"
export AZURE_CERT_PATH=~/azure/management.pem
export HOMEBREW_NO_ANALYTICS=1

# alias
alias wtf="man"
alias godoc="godoc -http=:6060 -index=true -v=true -play=true"
alias wow="git status"
alias such="git"
alias very="git"
alias meteo="curl http://wttr.in/Lyon -H 'Accept-Language: fr'"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
