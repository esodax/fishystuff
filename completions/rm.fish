
. /usr/share/fish/completions/rm.fish

complete -c rm -f -a "(/usr/bin/find . -maxdepth 1 -mindepth 1 -type f -exec basename \{\} \;)"

