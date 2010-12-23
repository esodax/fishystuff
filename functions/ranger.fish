
function ranger
    if /usr/bin/ranger --fail-unless-cd $argv
        cd (grep \^\' $HOME/.config/ranger/bookmarks | cut -b3-)
    end
end

# vim:ts=4:sw=4:et:ft=fish:
