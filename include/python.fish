
if [ -d $HOME/.python ]
    if [ -d $HOME/.python/modules ]
        set -x PYTHONPATH $HOME/.python/modules
    end
    if [ -r $HOME/.python/pythonrc ]
        set -x PYTHONSTARTUP $HOME/.python/pythonrc
    end
end

# vim:ts=4:sw=4:et:ft=fish:
