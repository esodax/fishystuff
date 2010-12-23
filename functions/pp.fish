
function pp -d "Print the result of a python expression"
    python $fish_script_dir/eval.py $argv
end

# vim:ts=4:sw=4:et:ft=fish:
