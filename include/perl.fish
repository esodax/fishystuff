
if [ -d /usr/lib/perl5/site_perl/bin ]
    set PATH $PATH /usr/lib/perl5/site_perl/bin
end
if [ -d /usr/lib/perl5/vendor_perl/bin ]
    set PATH $PATH /usr/lib/perl5/vendor_perl/bin
end
if [ -d /usr/lib/perl5/core_perl/bin ]
    set PATH $PATH /usr/lib/perl5/core_perl/bin
end

# vim:ts=4:sw=4:et:ft=fish:
