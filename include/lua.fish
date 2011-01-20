
if [ -d $HOME/.lua ]
    set -x LUA_PATH "$HOME/.lua/?.lua;$HOME/.lua/?/init.lua;;"
    set -x LUA_CPATH "$HOME/.lua/?.so;;"
    if [ -r $HOME/.lua/luarc ]
        set -x LUA_INIT "@/$HOME/.lua/luarc"
    end
end

# vim:ts=4:sw=4:et:ft=fish:
