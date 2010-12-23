
for b in 'lynx' 'links'
    if test -x /usr/bin/$b
        set -x BROWSER $b
        break
    end
end
if test -x /usr/bin/vim
    set -x EDITOR vim
else
    set -x EDITOR vi
end
set -x VISUAL $EDITOR
set -x PAGER less

# vim:ts=4:sw=4:et:ft=fish:
