# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository containing configuration files for various development tools and applications. The repository uses GNU Stow for symlink management to deploy configurations to the user's home directory.

## Architecture and Structure

- **fish/**: Fish shell configuration including PATH management and tool integrations
- **git/**: Git configuration with global ignore patterns
- **jj/**: Jujutsu VCS configuration and per-repo configs under `jj/.config/jj/repos/`
- **ghostty-macos/**: Ghostty terminal emulator configuration (macOS-specific)
- **aerospace/**: AeroSpace tiling window manager configuration
- **Brewfile**: Homebrew bundle file listing all installed packages and applications
- **setup_ubuntu.sh**: Bootstrap script for Ubuntu environments

## Key Configuration Details

### Development Environment
- Primary shell: Fish with mise version manager integration
- Terminal: Ghostty with Catppuccin Macchiato theme
- VCS: Both Git and Jujutsu (jj) configured; jj default command is `log`
- Window manager: AeroSpace (macOS), keybindings use `ctrl-alt-cmd` prefix

### Tool Integration
- **mise**: Used for language version management (activated in fish config)
- **fzf**: Command-line fuzzy finder integration
- **stow**: Required for deploying dotfiles via symlinks

## Common Operations

### Installing/Updating Dotfiles
```bash
# Simulate changes first
stow -n -t ~ fish git jj ghostty-macos aerospace

# Apply changes
stow -t ~ fish git jj ghostty-macos aerospace
```

### Managing Dependencies
```bash
# Install all packages from Brewfile
brew bundle

# Update Brewfile with current packages
brew bundle dump --force
```

## Important Notes

- The repository structure expects to be cloned in `~/Developer/dotfiles`
- All configuration files are meant to be symlinked, not copied
- Global gitignore includes Claude Code files (`CLAUDE.local.md`) and mise local configs
- Fish shell automatically adds common development paths including `./bin` for project-local scripts
- When adding a new stow package, check for conflicts with `stow -n` before applying