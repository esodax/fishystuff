
function fish_prompt -d "Write out the custom prompt"
    lua $fish_script_dir/fishprompt.luac
    #python $fish_script_dir/fishprompt.py
end

# vim:ts=4:sw=4:et:ft=fish:
