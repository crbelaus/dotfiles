fish_add_path -g /opt/homebrew/bin /opt/homebrew/sbin ~/.local/bin

set -gx EDITOR nvim

if status is-interactive
    # Disable default fish greeting
    set -g fish_greeting

    if type -q mise
        mise activate fish | source
    end

    if type -q fzf
        fzf --fish | source
    end
else if type -q mise
    mise activate fish --shims | source
end
