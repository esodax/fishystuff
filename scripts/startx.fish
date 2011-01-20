
set -gx XINITRC $HOME/.xinitrc
set -gx XAUTHORITY $HOME/.Xauthority

set serverrc '/etc/X11/xinit/xserverrc'
set display ':0'

# Create a magic cookie
set mcookie (mcookie -f $XINITRC)
if [ -z "$mcookie" ]
    echo "error creating the xauth-cookie"
    sleep 3
    exit 1
end

# Create the auth server file
set dummy 0
set xserverauthfile (mktemp -p /tmp serverauth.XXXXXXXXXX)
trap "rm -f $xserverauthfile" HUP INT QUIT ILL TRAP KILL BUS TERM
echo "add :$dummy . $mcookie" | xauth -q -f $xserverauthfile

# Add client auth info
for displayname in $display $HOST$display
    set authcookie (xauth list $displayname | cut -d \  -f5 ^/dev/null)
    if [ -z "$authcookie" ]
        echo "add $displayname . $mcookie" | xauth -q
        set removelist $displayname $removelist
    else
        set dummy (math "$dummy + 1")
        echo "add :$dummy . $authcookie" | xauth -q -f $xserverauthfile
    end
end

# Start the X window system
xinit $argv -- $serverrc $display -auth $xserverauthfile
set exitcode $status

# Clean up
if set -q removelist
    xauth remove $removelist
end
if [ -f $xserverauthfile ]
    rm -f $xserverauthfile
end
set -e XAUTHORITY
set -e XINITRC

exit $exitcode

# vim:ts=4:sw=4:et:ft=fish:
