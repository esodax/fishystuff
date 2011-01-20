# vim:fileencoding=utf-8:ts=4:sw=4:et:ft=python3:

import sys, os, math

src = ' '.join(sys.argv[1:])
try:
    out = eval(src)
except:
    out = src
finally:
    print(out)

