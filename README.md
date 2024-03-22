# dotfiles

## How to install.

The files in this repository must be symlinked to their respective paths in the
$HOME folder. We can do this manually or using [GNU Stow](https://www.gnu.org/software/stow/).
Since GNU Stow can automatically manage symlinked files, it is the recommended
tool for setting up the dotfiles.

The first step is to clone this repository in your $HOME folder:

    git clone --recursive https://github.com/belaustegui/dotfiles.git ~/Dotfiles

Additionally, my git configuration requires a few external tools that should be installed by
your package manager:

    1. [difftastic](https://difftastic.wilfred.me.uk/) for syntax-aware diffing
    2. [neovim](https://neovim.io/) a modern vim reimplementation

### 1. Simulate changes

The first step is to run GNU Stow in simulation mode. This would warn about all
possible errors without making any changes in the filesystem. You can do this
with the command:

    cd ~/Dotfiles
    stow -n zsh # For zsh configuration
    stow -n git # For git configuration

We may get some warning messages like the following one.

    cd ~/Dotfiles
    stow -n git
    WARNING! stowing git would cause conflicts:
      * existing target is neither a link nor a directory: .gitconfig
    All operations aborted.

This means that the file `.gitconfig` exists before the symlinking. We need to
manually change its name so GNU Stow can create the symlink. My recommendation is to rename it:

    mv ~/.gitconfig ~/.gitconfig.old

### 2. Make changes

After all conflicting files have been renamed, we should not get any warnings:

    cd ~/Dotfiles
    stow -n git
    WARNING: in simulation mode so not modifying filesystem.

We can now write the changes to disk removing the `-n` modifier:

    cd ~/Dotfiles
    stow zsh
    stow git
