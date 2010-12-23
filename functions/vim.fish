
function vim --description 'vim wrapper'
    if test $TERM = rxvt-unicode-256color
        echo -ne '\033]12;#df8700\007'
        /usr/bin/vim $argv
        echo -ne '\033]12;#0087ff\007'
    else
        /usr/bin/vim $argv
    end
end

# vim:ts=4:sw=4:et:ft=fish:
