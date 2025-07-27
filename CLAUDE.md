# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository containing configuration files for various development tools and applications. The repository uses GNU Stow for symlink management to deploy configurations to the user's home directory.

## Architecture and Structure

- **fish/**: Fish shell configuration including PATH management and tool integrations
- **git/**: Git configuration with global ignore patterns  
- **jj/**: Jujutsu VCS configuration
- **ghostty/**: Ghostty terminal emulator configuration
- **zed/**: Zed editor configuration with Elixir/HEEX language server setup
- **Brewfile**: Homebrew bundle file listing all installed packages and applications

## Key Configuration Details

### Development Environment
- Primary shell: Fish with mise version manager integration
- Editor configurations: Zed with Claude 3.5 Sonnet assistant integration
- Terminal: Ghostty with Catppuccin Macchiato theme
- VCS: Both Git and Jujutsu (jj) configured

### Tool Integration
- **mise**: Used for language version management (activated in fish config)
- **fzf**: Command-line fuzzy finder integration
- **stow**: Required for deploying dotfiles via symlinks

## Common Operations

### Installing/Updating Dotfiles
```bash
# Simulate changes first
stow -n -t ~ fish git jj ghostty zed

# Apply changes  
stow -t ~ fish git jj ghostty zed
```

### Managing Dependencies
```bash
# Install all packages from Brewfile
brew bundle

# Update Brewfile with current packages
brew bundle dump --force
```

## Language Server Configuration

Zed is configured with:
- Elixir Language Server (with Dialyzer disabled)
- TailwindCSS Language Server for HEEX files
- Emmet Language Server for HTML expansion

## Important Notes

- The repository structure expects to be cloned in `~/Developer/dotfiles`
- All configuration files are meant to be symlinked, not copied
- Global gitignore includes Claude Code files (`CLAUDE.local.md`) and mise local configs
- Fish shell automatically adds common development paths including `./bin` for project-local scripts