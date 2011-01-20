-- vim:fileencoding=utf-8:ts=4:sw=4:et:ft=lua:

arg[0] = 'return'
chunk = loadstring(table.concat(arg, ' ', 0))
print(chunk and chunk() or tostring(table.concat(arg, ' ', 1)))

