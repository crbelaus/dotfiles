# dotfiles

1. Install xcode utils with `xcode-select --install`. This whill set up `git` and other basic dev tooling.
2. Install mise natively (see https://mise.jdx.dev/getting-started.html)
3. Clone this repo with `git clone git@github.com:crbelaus/dotfiles.git ~/.dotfiles`
3. Open the folder with `cd ~/.dotfiles`
4. Apply the dotfiles with `mise bootstrap dotfiles apply`
5. Install the system packages and apps with `mise bootstrap packages apply --raw`. The `--raw` flag is needed so packages that require sudo (Twingate and Tailscale) can show the password prompt properly. Without this flag we won't see the password prompt and the install hangs forever.

## Brew packages with mise

> [!NOTE]
> See the [full documentation](https://mise.jdx.dev/bootstrap/packages/brew.html), the following may be updated when you read this.

This setup installs brew formulae and casks natively with mise, without using Homebrew.
`brew` is not even installed. Mise installs brew packages in the native `/opt/homebrew` paths
and the dotfiles add them to `$PATH` both in zsh and fish shells. Everything should work
just fine.

Some useful commands:

- Installing packages - find the name in [Homebrew's repository](https://formulae.brew.sh), add it to `mise.toml` using the `brew` or `brew-cask` prefix and then run `mise bootstrap packages apply` again.
- Upgrading packages - run `mise bootstrap packages upgrade` (some casks have the auto update flag to convey that their check for their own updates, so mise won't update those)
- Removing packages - remove the relevant package from `mise.toml` and then run `mise boostrap packages prune`. Casks that were installed as a package won't be automatically uninstalled so we have to remove those manually. Getting help from Claude may be useful.