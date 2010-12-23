
# Set system path
set -x PATH /bin /usr/bin /sbin /usr/sbin

# Unset bad variables
set -e TERMCAP
set -e MANPATH

# Set good variables
set -x HOST (hostname)
set -x UID (id -u)
set -x TMPDIR /tmp

# Source include-scripts
for s in $HOME/.config/fish/include/*.fish
    . $s
end

# vim:ts=4:sw=4:et:ft=fish:
