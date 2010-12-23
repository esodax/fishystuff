
function unzip -d "Extract zip archives"
    if not [ -x /usr/bin/7z ]
        echo "'p7zip' not installed"
        return 1
    end
    /usr/bin/7z x $argv
end

# vim:ts=4:sw=4:et:ft=fish:
