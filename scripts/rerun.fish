
set watchfile './.watched'

if not [ -x /usr/bin/inotifywait ]
    echo "'inotify-tools' not installed"
    exit 1
end
clear; echo "Beginning rerun in \"$PWD\"" \((date)\)
if [ -f $watchfile ]
    set iw_args --fromfile $watchfile
    echo -n "using watch file: "; set_color -u; echo $watchfile
else
    if not set -q WATCHED_PATTERN
        set WATCHED_PATTERN \*.\*
    end
    set iw_args (find . -type f \( -iname "$WATCHED_PATTERN" \))
    echo "watching current directory recursively:"
    set_color -u
    for n in $iw_args
        echo $n
    end
end
while true
    set_color normal; set_color green
    eval $argv
    set_color -u
    if not inotifywait -q -e modify $iw_args
        echo 'unwatched event received, or some error occurred'
        break
    end
end
set_color normal
echo "Rerun ended in \"$PWD\"" \((date)\)

# vim:ts=4:sw=4:et:ft=fish:
