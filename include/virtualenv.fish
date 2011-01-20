
if [ -d $HOME/.virtualenvs ]
    set -x WORKON_HOME $HOME/.virtualenvs
else
    set -x WORKON_HOME /tmp
end

set -x VIRTUALENV_USE_DISTRIBUTE true

# vim:ts=4:sw=4:et:ft=fish:
