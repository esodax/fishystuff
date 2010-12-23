
if test -d $HOME/.python
    set -x PYTHONSTARTUP $HOME/.python/pythonrc
    set -x PYTHONPATH $HOME/.python/modules
end

# vim:ts=4:sw=4:et:ft=fish:
