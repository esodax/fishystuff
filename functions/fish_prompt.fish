
function fish_prompt --description "Write out the custom prompt"

    if not set -q __fish_prompt_normal
        set -gx __fish_prompt_normal (set_color $fish_color_normal)
    end
    if not set -q __fish_prompt_cwd_root
        set -gx __fish_prompt_cwd_root (set_color $fish_color_cwd_root)
    end
    if not set -q __fish_prompt_cwd
        set -gx __fish_prompt_cwd (set_color $fish_color_cwd)
    end
    if not set -q __fish_prompt_branch
        set -gx __fish_prompt_branch (set_color $fish_color_branch)
    end
    if not set -q __fish_prompt_branch_dirty
        set -gx __fish_prompt_branch_dirty (set_color $fish_color_branch_dirty)
    end
    if not set -q __fish_prompt_virtualenv
        set -gx __fish_prompt_virtualenv (set_color $fish_color_virtualenv)
    end

    python $fish_script_dir/fishprompt.py

end

# vim:ts=4:sw=4:et:ft=fish:
