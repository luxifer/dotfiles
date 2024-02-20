ZSH=$HOME/.oh-my-zsh
plugins=(git tmux kubectl docker)
source $ZSH/oh-my-zsh.sh
# Starfish
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
source $HOME/.cargo/env
source /usr/share/nvm/init-nvm.sh

# exports
export EDITOR="vim"
export GOPATH=~/apps/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.pulumi/bin
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export GPG_TTY=$(tty)

# alias
alias wtf="man"
alias godoc="godoc -http=:6060 -index=true -v=true -play=true"
alias meteo="curl http://wttr.in/Lyon -H 'Accept-Language: fr'"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.poetry/bin:$PATH"

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin
