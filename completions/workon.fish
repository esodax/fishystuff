
complete -c workon -f -A -a "(find $WORKON_HOME -maxdepth 1 -mindepth 1 -type d -exec basename \{\} \;)"

