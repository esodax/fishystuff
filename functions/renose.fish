
function renose -d "Rerun 'nosetests' when watched file(s) is modified"
    set -x WATCHED_PATTERN \*.py
    fish $fish_script_dir/rerun.fish nosetests $argv
end

# vim:ts=4:sw=4:et:ft=fish:
