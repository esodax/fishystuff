
function mv
    if status -i
        command mv -i $argv
    else
        command mv $argv
    end
end

# vim:ts=4:sw=4:et:ft=fish:
