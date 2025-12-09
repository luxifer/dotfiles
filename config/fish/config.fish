if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_config theme choose Solarized\ Dark
end

set -Ux EDITOR vim
set -Ux REQUESTS_CA_BUNDLE /etc/ssl/certs/ca-certificates.crt
set -Ux STOPIT 1
set -Ux SHUTUP 1
set -Ux GOAWAY 1
fish_add_path /usr/local/go/bin
fish_add_path ~/go/bin
fish_add_path ~/.local/bin
fish_add_path ~/.pulumi/bin
fish_add_path ~/.poetry/bin
fish_add_path ~/.krew/bin
fish_add_path ~/.cargi/bin

starship init fish | source
direnv hook fish | source

# pnpm
set -gx PNPM_HOME "/home/fviel/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
