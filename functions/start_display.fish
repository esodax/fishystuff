
function start_display -d "Initialize an desktop session"
    if not set -q startdisplay
        set -U startdisplay false
    end
    if [ $startdisplay != true ]
        echo 'Autostart of display server is disabled'
        echo '(use "set startdisplay true" to enable)'
        return
    end
    if begin; [ -z "$DISPLAY" ]; and [ (tty) = '/dev/tty1' ]; and [ (runlevel) = 'N 5' ]; and [ "$USER" != 'root' ]; end
        if [ $argv[1] = '-x' ]
            set start $fish_script_dir/startx.fish
        else
            set start $fish_script_dir/startw.fish
        end
        if [ -f $start ]
            exec fish $start
        else
            echo "start script: '$start' not found!"
        end
    else
        echo "Condition failed to start the display server"
    end
end

# vim:ts=4:sw=4:et:ft=fish:
