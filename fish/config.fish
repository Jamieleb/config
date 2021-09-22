# set vi key bindings
fish_vi_key_bindings

# No greeting message
set -g fish_greeting

# Abbreviations
abbr -a rc rails console
abbr -a rs rails server
abbr -a wp ./bin/webpack-dev-server

function doom -d "Start the Emacs daemon and opens the Emacs Client"
    command emacs --daemon
    command emacsclient --no-wait --create-frame
end

fish_add_path /opt/homebrew/opt/mysql@5.7/bin

status --is-interactive; and source (rbenv init -|psub)

# Use Starship as prompt
starship init fish | source
fish_add_path /opt/homebrew/opt/openssl@1.1/bin
