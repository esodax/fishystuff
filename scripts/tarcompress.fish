
if not [ (count $argv) -ge 2 ]
    echo "tarcompress: missing arguments"
    exit 1
end

set compression $argv[1]
set -e argv[1]

if not contains $compression 'gz' 'bz2' 'xz' 'lzop'
    echo "compression: '$compression' not supported"
    exit 1
end

if [ (count $argv) -ge 2 ]
    set archive $argv[1]
    set -e argv[1]
    set from $argv
else
    set archive (echo $argv[1] | tr -d ./).tar.$compression
    set from $argv[1]
end

if [ -e $archive ]
    echo "$archive: already exists!"
    exit 1
end

/bin/tar --{$compression} --totals -cvf $archive $from

# vim:ts=4:sw=4:et:ft=fish:
