
function key_bindings -d "Custom key bindings for fish"

    # Load the default key bindings first
    . /usr/share/fish/functions/fish_default_key_bindings.fish
    fish_default_key_bindings

    # Paste last entry from the killring
    bind \cv yank

    # Show jobs
    bind \ej 'echo; jobs; commandline -f repaint'

    # New terminal
    bind \eo urxvtc

    # Process monitor
    bind \eh 'htop; commandline -f repaint'

    # Launch the console file-manager (ranger)
    bind \e\; 'commandline -f kill-whole-line; ranger; commandline -f repaint'

end

# vim:ts=4:sw=4:et:ft=fish:
