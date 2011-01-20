
set -x __fish_prompt_normal (set_color $fish_color_normal)
set -x __fish_prompt_cwd_root (set_color $fish_color_cwd_root)
set -x __fish_prompt_cwd (set_color $fish_color_cwd)
set -x __fish_prompt_branch (set_color $fish_color_branch)
set -x __fish_prompt_branch_dirty (set_color $fish_color_branch_dirty)
set -x __fish_prompt_branch_cache_dirty (set_color $fish_color_branch_cache_dirty)
set -x __fish_prompt_virtualenv (set_color $fish_color_virtualenv)

set -x GREP_OPTIONS --color=auto
set -x GREP_COLOR 1\;32

set -x LESS_TERMCAP_mb \e\[01\;37m
set -x LESS_TERMCAP_md \e\[01\;37m
set -x LESS_TERMCAP_me \e\[0m
set -x LESS_TERMCAP_se \e\[0m
set -x LESS_TERMCAP_so \e\[01\;44\;33m
set -x LESS_TERMCAP_ue \e\[0m
set -x LESS_TERMCAP_us \e\[01\;34m

# eval (dircolors -c)
echo begin\; (dircolors -c) \;end eval2_inner \<\&3 3\<\&- | . 3<&0
set LS_COLORS $LS_COLORS\*.lha=01\;31 \*.sfx=01\;31 \*.lzop=01\;31 \*.iff=01\;35

# vim:ts=4:sw=4:et:ft=fish:
