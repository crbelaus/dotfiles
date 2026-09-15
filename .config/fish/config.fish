if test -d /opt/homebrew
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin
end


if test -d ~/.local/bin
    fish_add_path ~/.local/bin
end

fish_add_path ./bin

if type -q mise
    mise activate fish | source
end

if type -q fzf
    fzf --fish | source
end

if status is-interactive
    # Disable default fish greeting
    set -g fish_greeting
    # Commands to run in interactive sessions can go here
end

alias claude-bluelabs='CLAUDE_CONFIG_DIR=~/.claude-bluelabs claude'
