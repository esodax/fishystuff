
function mutt -d "easy way to 'mutt' an account"
    for account in ~/.mutt/imap/*
        if [ "$argv" = (basename $account) ]
            command mutt -e "source $account"
            return
        end
    end
    command mutt $argv
end

# vim:ts=4:sw=4:et:ft=fish:
