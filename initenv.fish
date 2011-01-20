
# Set system path
set -x PATH /bin /usr/bin /sbin /usr/sbin

# Unset bad variables
set -e TERMCAP
set -e MANPATH

# Set good variables
set -x HOST (hostname)
set -x UID (id -u)
set -x TMPDIR /tmp

# Set legacy variables
set -x OSTYPE (uname -o)
set -x MACHTYPE (uname -m)

# Source include (profile) scripts
for s in $FISH/include/*.fish
    . $s
end

# vim:ts=4:sw=4:et:ft=fish:
