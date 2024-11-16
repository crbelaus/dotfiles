if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/postgresql@16/bin

# Source asdf-vm for programming tools version management
source /opt/homebrew/opt/asdf/libexec/asdf.fish
