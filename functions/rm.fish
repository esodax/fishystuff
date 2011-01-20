
function rm -d "Remove files or directories with a safety net"
    if status -i
        read -p 'echo -n "delete args? "' answer
        [ $answer = 'y' ]; and command rm -v $argv
    else
        command rm $argv
    end
end

# vim:ts=4:sw=4:et:ft=fish:
