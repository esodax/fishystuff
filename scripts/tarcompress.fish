
set compression $argv[1]

if [ (count $argv) -gt 3 ]
    echo "to many arguments"
    exit 1
end

if [ (count $argv) -eq 3 ]
    set archive $argv[2]
    set from $argv[3]
else
    set archive (echo $argv[2] | tr -d ./).tar.$compression
    set from $argv[2]
end

if [ -e $archive ]
    echo "$archive: already exists"
    exit 1
end

tar --{$compression} --totals -cvf $archive $from

# vim:ts=4:sw=4:et:ft=fish:
