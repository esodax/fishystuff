
if test -z "$DISPLAY"
    set -x TERM linux
else
    set -x TERM rxvt-unicode-256color
end
set -x RXVT_SOCKET /tmp/urxvt-$HOST

# vim:ts=4:sw=4:et:ft=fish:
