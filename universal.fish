# Set required universal variables with a default value

# Prompt colors
if not set -q fish_color_virtualenv
    set -U fish_color_virtualenv cyan
end
if not set -q fish_color_branch
    set -U fish_color_branch cyan
end
if not set -q fish_color_branch_dirty
    set -U fish_color_branch_dirty red
end
if not set -q fish_color_branch_cache_dirty
    set -U fish_color_branch_cache_dirty yellow
end

# Custom script directory
if not set -q fish_script_dir
    set -U fish_script_dir $FISH/scripts
end

# vim:ts=4:sw=4:et:ft=fish:
