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

status --is-interactive; and source (rbenv init -|psub)
fnm env --use-on-cd | source

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
