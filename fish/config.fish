# set vi key bindings
fish_vi_key_bindings

# No greeting message
set -g fish_greeting

# Abbreviations
abbr -a nv lvim
abbr -a icloud ~/Library/Mobile\ Documents/com~apple~CloudDocs

abbr -a za zellij attach
abbr -a zc zellij attach -c
abbr -a zl zellij ls
 
abbr -a ff tmux-sessionizer
abbr -a ntr node-task-runner

status --is-interactive; and source (rbenv init -|psub)

function __nvm_auto --on-variable PWD
  nvm use --silent 2>/dev/null
end
__nvm_auto

# Use Starship as prompt
starship init fish | source
fish_add_path /opt/homebrew/opt/openssl@1.1/bin
fish_add_path $HOME/Library/Python/3.8/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/config/scripts

export GPG_TTY=$(tty)

zoxide init fish | source

# opam configuration
source /Users/jamie.lebrun/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/jamie.lebrun/.ghcup/bin $PATH # ghcup-env