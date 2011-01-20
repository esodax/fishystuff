
function cp
    if status -i
        command cp -i $argv
    else
        command cp $argv
    end
end

# vim:ts=4:sw=4:et:ft=fish:
