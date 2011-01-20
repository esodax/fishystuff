
if begin; status --is-login; and [ -z "$__ENVIRON__" ]; end

    # Set fish config directory
    set -gx FISH $HOME/.config/fish

    # Default universal variables
    . $FISH/universal.fish

    # Initialize the environment
    . $FISH/initenv.fish

    # Source startup commands
    . $FISH/autostart.fish

    set -x __ENVIRON__ true
end

if status --is-interactive
    . $FISH/rc.fish
end

# vim:ts=4:sw=4:et:ft=fish:
