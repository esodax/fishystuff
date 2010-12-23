
function relove -d "Rerun 'love .' when watched file(s) is modified"
    set -x WATCHED_PATTERN \*.lua
    fish $fish_script_dir/rerun.fish love . $argv
end

# vim:ts=4:sw=4:et:ft=fish:
