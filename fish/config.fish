# set vi key bindings
fish_vi_key_bindings

# No greeting message
set -g fish_greeting

# Run neofetch on open
neofetch

# Abbreviations
abbr -a rc rails console
abbr -a rs rails server
abbr -a wp ./bin/webpack-dev-server

function doom -d "Start the Emacs daemon and opens the Emacs Client"
    command emacs --daemon
    command emacsclient --no-wait --create-frame
end

set PATH /usr/local/opt/mysql@5.7/bin $PATH

# Use Starship as prompt
starship init fish | source
