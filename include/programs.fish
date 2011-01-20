
for b in 'lynx' 'links' 'w3m'
    if [ -x /usr/bin/$b ]
        set -x BROWSER $b
        break
    end
end
if [ -x /usr/bin/vim ]
    set -x EDITOR vim
else
    set -x EDITOR vi
end
set -x VISUAL $EDITOR
set -x PAGER less

# vim:ts=4:sw=4:et:ft=fish:
