# dotfiles

1. Install [mise](https://mise.jdx.dev/)
2. Clone this repo with `git clone git@github.com:crbelaus/dotfiles.git ~/.dotfiles`
3. Open the folder with `cd ~/.dotfiles`
4. Apply the dotfiles with `mise -E macos bootstrap` for macOS or `mise -E omarchy bootstrap` for Omarchy Linux

## Homebrew packages (macOS)

Homebrew formulae and casks are declared in `[bootstrap.packages]` in `mise.macos.toml` and installed by mise ([docs](https://mise.jdx.dev/bootstrap/packages/brew.html)). They are applied as part of `mise -E macos bootstrap`.

- Add a formula with `"brew:<name>" = "latest"` and a cask with `"brew-cask:<name>" = "latest"`
- For third-party taps, use the full name (e.g. `"brew-cask:nikitabobko/tap/aerospace"`)
- Check what is installed with `mise -E macos bootstrap packages status`
- Install only packages with `mise -E macos bootstrap packages apply` (add `--dry-run` to preview)
- Import installed formulae into the config with `mise -E macos bootstrap packages import --manager brew`
- Remove packages not in the config with `mise -E macos bootstrap packages prune --manager brew --dry-run` (use `--manager brew-cask` for casks and `--yes` to actually remove them)

Limitations:

- Casks cannot be imported, so new apps must be added to `mise.macos.toml` by hand
- Only some cask types are supported, so check that new casks install correctly
- `brew services` is not supported
- Formula names must be canonical (e.g. `postgresql@17`, not `postgres`)
