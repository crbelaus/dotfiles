# dotfiles

1. Install [brew](https://brew.sh/)
2. Clone this repo with `git clone git@github.com:crbelaus/dotfiles.git ~/.dotfiles`
3. Open the folder with `cd ~/.dotfiles`
4. Install the system packages and casks `brew bundle install`
4. Apply the dotfiles with `mise bootstrap`

After installing (or removing) brew packages you can update the Brewfile by running `mise run brew-dump`. To reinstall all the packages you can use `mise run brew-bundle`.
