
function run_gpg-agent
    if [ -x /usr/bin/gpg-agent ]
        set -l PINENTRY /usr/bin/pinentry-gtk-2
        set -l GPGINFO /tmp/gpg-agent.info
        if not pgrep -u $USER gpg-agent >/dev/null ^&1
            gpg-agent --daemon --enable-ssh-support --pinentry-program $PINENTRY --write-env-file $GPGINFO >/dev/null
            chmod 600 $GPGINFO
        end
        if [ -f $GPGINFO ]
            for l in (cat $GPGINFO)
                set -gx (echo $l | cut -d= -f1) (echo $l | cut -d= -f2)
            end
        else
            echo 'ERROR: gpg-agent info file not found'
        end
    else
        echo 'WARN: gpg-agent not found/installed'
    end
end

# vim:ts=4:sw=4:et:ft=fish:
