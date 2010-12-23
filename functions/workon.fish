
function workon -d "Activate virtual environment in $WORKON_HOME"

    set target {$WORKON_HOME}/$argv
    if not [ ! -z "$argv" -a -d "$target/bin" ]
        echo "$argv is not an virtual environment"
        return 1
    end

    if set -q VIRTUAL_ENV
        if [ $VIRTUAL_ENV = $target ]
            echo "$argv environment already activated"
            return 1
        end
        deactivate
    end

    echo "activating environment: $argv"

    set -gx VIRTUAL_ENV $target
    set -gx _OLD_PATH $PATH
    set -gx PATH $VIRTUAL_ENV/bin $PATH

    for name in 'python' 'love'
        if not [ -x $VIRTUAL_ENV/bin/$name ]
            continue
        end
        echo " + $name"
        switch $name

            case python
                if set -q PYTHONHOME
                    set -gx _OLD_PYTHONHOME $PYTHONHOME
                    set -e PYTHONHOME
                end

            case love
                true

        end
    end

    echo

end

# vim:ts=4:sw=4:et:ft=fish:
