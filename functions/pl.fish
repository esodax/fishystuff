
function pl -d "Print the result of a lua expression"
    lua $fish_script_dir/eval.lua $argv
end

# vim:ts=4:sw=4:et:ft=fish:
