# dotfiles

## How to install.

The files in this repository must be symlinked to their respective paths in the
$HOME folder. We can do this manually or using [GNU Stow](https://www.gnu.org/software/stow/).
Since GNU Stow can automatically manage symlinked files, it is the recommended
tool for setting up the dotfiles.

The first step is to clone this repository in your $HOME folder:

    mkdir -p ~/Developer
    cd ~/Developer
    git clone https://github.com/belaustegui/dotfiles.git dotfiles

### 1. Simulate changes

The first step is to run GNU Stow in simulation mode. This would warn about all
possible errors without making any changes in the filesystem. You can do this
with the command:

    cd ~/Developer/dotfiles
    stow -n -t ~ fish git jj ghostty

We may get some warning messages like the following one.

    WARNING! stowing git would cause conflicts:
      * existing target is neither a link nor a directory: .gitconfig
    All operations aborted.

This means that the file `.gitconfig` exists before the symlinking. We need to
manually change its name so GNU Stow can create the symlink. My recommendation is to rename it:

    mv ~/.gitconfig ~/.gitconfig.old

### 2. Make changes

After fixing the warnings we can now write the changes to disk by removing the `-n` modifier:

    cd ~/Developer/dotfiles
    stow -t ~ fish ghostty git jj

The `-t ~` flag tells stow to use `~` as the target directory for symlinks. Otherwise it will
use the parent directory by default (so `~/Developer`).
