
function autostart -d "Initialize an desktop session"
    if begin; [ -z "$DISPLAY" ]; and [ (tty) = '/dev/tty1' ]; and [ (runlevel) = 'N 5' ]; and [ "$USER" != 'root' ]; end
        set startup $fish_script_dir/startx.fish
        if [ -f $startup ]
            exec fish $startup
        end
    end
end

# vim:ts=4:sw=4:et:ft=fish:
