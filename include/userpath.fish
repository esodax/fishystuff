
for p in /data/utils $HOME/.local/bin $HOME/.bin $HOME/.scripts
    if test -d $p
        set PATH $p $PATH
    end
end

# vim:ts=4:sw=4:et:ft=fish:
