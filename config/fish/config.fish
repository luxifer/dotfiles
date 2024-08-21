if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_config theme choose Solarized\ Dark
end

set -Ux EDITOR vim
set -Ux GOPATH ~/apps/go
set -Ux REQUESTS_CA_BUNDLE /etc/ssl/certs/ca-certificates.crt
fish_add_path $GOPATH/bin
fish_add_path ~/.local/bin
fish_add_path ~/.pulumi/bin
fish_add_path ~/.poetry/bin
fish_add_path ~/.krew/bin

starship init fish | source
direnv hook fish | source
