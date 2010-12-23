
if status --is-login

    . $HOME/.config/fish/__init__.fish

    run_gpg-agent
    autostart

else

    set BROWSER firefox

end

# vim:ts=4:sw=4:et:ft=fish:
