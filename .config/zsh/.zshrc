# Make completions shipped by Homebrew packages (gh, jj, herdr, rg...) discoverable. Must come before compinit.
fpath=(/opt/homebrew/share/zsh/site-functions $fpath)

# Load and initialize zsh's completion system, which is off by default.
autoload -Uz compinit && compinit

# Activate mise with a prompt hook, so tool versions switch automatically when changing directories.
eval "$(/Users/crbelaus/.local/bin/mise activate zsh)"

# Register completions for the mise CLI itself. Needs compinit to have run first.
eval "$(/Users/crbelaus/.local/bin/mise completion zsh)"

# Prompt: current directory in blue, then an arrow that is green if the last command succeeded or red if it failed.
PROMPT='%F{blue}%~%f %(?.%F{green}.%F{red})❯%f '
