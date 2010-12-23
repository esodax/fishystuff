
function mkvirtualenv -d "Make a new virtual environment in $WORKON_HOME"
    switch $argv

        case python
        /usr/bin/virtualenv $argv

        case love
        #TODO

    end
end

# vim:ts=4:sw=4:et:ft=fish:
