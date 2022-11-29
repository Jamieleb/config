# set vi key bindings
fish_vi_key_bindings

# No greeting message
set -g fish_greeting

# Abbreviations
abbr -a rc rails console
abbr -a rs rails server
abbr -a wp ./bin/webpack-dev-server
abbr -a nv nvim
abbr -a icloud ~/Library/Mobile\ Documents/com~apple~CloudDocs

function doom -d "Start the Emacs daemon and opens the Emacs Client"
    command emacs --daemon
    command emacsclient --no-wait --create-frame
end

fish_add_path /opt/homebrew/opt/mysql@5.7/bin

status --is-interactive; and source (rbenv init -|psub)
fnm env --use-on-cd | source

# Use Starship as prompt
starship init fish | source
fish_add_path /opt/homebrew/opt/openssl@1.1/bin
fish_add_path $HOME/Library/Python/3.8/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin

export GPG_TTY=$(tty)
