if test -d /opt/homebrew
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin
end

if test -f ~/.krew/bin
    fish_add_path ~/.krew/bin
end

if test -f ~/google-cloud-sdk/path.fish.inc
    . ~/google-cloud-sdk/path.fish.inc
end

if test -f ~/.orbstack/shell/init2.fish
    source ~/.orbstack/shell/init2.fish
end

if test -f ~/.local/share/omarchy/bin
    fish_add_path ~/.local/share/omarchy/bin
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
    # Commands to run in interactive sessions can go here
end
