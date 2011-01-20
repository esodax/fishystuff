
for p in /data/utils $HOME/.local/bin $HOME/.bin $HOME/.scripts
    if not [ -d $p ] continue; end
    if not contains $p $PATH
        set PATH $p $PATH
    end
end

# vim:ts=4:sw=4:et:ft=fish:
