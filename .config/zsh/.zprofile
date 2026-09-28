# Keep only the first occurrence of each PATH entry, so re-sourcing this file doesn't add duplicates.
typeset -U path

# Add Homebrew's bin dirs, which mise installs brew packages into but never adds to PATH. Man pages under /opt/homebrew/share/man are then found automatically.
path=(/opt/homebrew/bin /opt/homebrew/sbin $path)

# Put mise shims on PATH so non-interactive login shells (IDEs, GUI apps, scripts) also find mise tools. Interactive shells replace this with full activation in .zshrc.
eval "$(~/.local/bin/mise activate zsh --shims)"
