
function mutt -d "easy way to 'mutt' an account"
    for account in ~/.mutt/imap/*
        if [ "$argv" = (basename $account) ]
            /usr/bin/mutt -e "source $account"
            set -g done_mutting True
            break
        end
    end
    if not set -q done_mutting
        /usr/bin/mutt $argv
    end
    set -e done_mutting
end

# vim:ts=4:sw=4:et:ft=fish:
