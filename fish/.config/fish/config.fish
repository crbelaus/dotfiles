fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/postgresql@16/bin
fish_add_path /Users/crbelaus/.krew/bin

if test -f '/Users/crbelaus/google-cloud-sdk/path.fish.inc'
    . '/Users/crbelaus/google-cloud-sdk/path.fish.inc'
end

if test -f ~/.orbstack/shell/init2.fish
    source ~/.orbstack/shell/init2.fish
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
