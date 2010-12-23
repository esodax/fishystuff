
function urxvtc -d "urxvtc wrapper for auto-starting urxvtd"

    while true
        /usr/bin/urxvtc $argv
        set exitcode $status
        if [ $exitcode -eq 2 ]
            if [ -z "$DISPLAY" ]
                break
            end
            /usr/bin/urxvtd -q -o -f
            continue
        end
        break
    end
    return $exitcode

end

# vim:ts=4:sw=4:et:ft=fish:
