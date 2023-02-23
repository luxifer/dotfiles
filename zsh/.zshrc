ZSH=$HOME/.oh-my-zsh
plugins=(git tmux kubectl docker)
source $ZSH/oh-my-zsh.sh
# Starfish
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# exports
export EDITOR="vim"
export GOPATH=~/apps/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/.local/bin
export GPG_TTY=$(tty)

# alias
alias wtf="man"
alias godoc="godoc -http=:6060 -index=true -v=true -play=true"
alias meteo="curl http://wttr.in/Lyon -H 'Accept-Language: fr'"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$HOME/.poetry/bin:$PATH"

export PATH="/usr/local/opt/net-snmp/bin:$PATH"
export PATH="/usr/local/opt/net-snmp/sbin:$PATH"
