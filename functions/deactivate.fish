
function deactivate -d "Exit virtualenv and return to normal shell environment"

    if not set -q VIRTUAL_ENV
        echo "no virtual environment to deactivate"
        return 1
    end

    echo "deactivating environment:" (basename $VIRTUAL_ENV)

    for name in 'python' 'love'
        if not [ -x $VIRTUAL_ENV/bin/$name ]
            continue
        end
        echo " - $name"
        switch $name

            case python
                if set -q _OLD_PYTHONHOME
                    set -gx PYTHONHOME _OLD_PYTHONHOME
                    set -e _OLD_PYTHONHOME
                end

            case love
                true

        end
    end

    set -gx PATH $_OLD_PATH
    set -e _OLD_PATH
    set -e VIRTUAL_ENV

    echo

end

# vim:ts=4:sw=4:et:ft=fish:
