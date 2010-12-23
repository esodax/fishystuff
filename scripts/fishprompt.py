# vim:fileencoding=utf-8:ts=4:sw=4:et:ft=python3:

from sys import stdout
from os import environ, access, F_OK
from os.path import basename
from subprocess import Popen, PIPE


def pwd():
    home_parts = environ['HOME'].strip('/').split('/')
    pwd_parts = environ['PWD'].strip('/').split('/')
    if home_parts == pwd_parts[:len(home_parts)]:
        tail = '~'
        pwd_parts = pwd_parts[len(home_parts):]
    else:
        tail = '/'
    try:
        head = pwd_parts.pop()
        body = ('/' if tail != '/' else '')+''.join(
                [p.strip('.')[0].lower()+'/' for p in pwd_parts])
    except IndexError:
        head = body = ''
    if environ['USER'] == 'root':
        color = environ['__fish_prompt_cwd_root']
    else:
        color = environ['__fish_prompt_cwd']
    return (color, tail+body+head)

def virtualenv():
    try:
        name = basename(environ['VIRTUAL_ENV'])
        env = (environ['__fish_prompt_cwd'], '[',
               environ['__fish_prompt_virtualenv'], name,
               environ['__fish_prompt_cwd'], ']')
    except KeyError:
        env = ()
    return env

def branch():
    if not access('.git', F_OK):
        return (None,)
    with open('/dev/null', 'w') as null:
        out = Popen(['git', 'status'], stdout=PIPE, stderr=null).communicate()[0]
    status = out.splitlines()
    if not status:
        return (None,)
    l = status[0].decode()
    branch = l[l.rfind(' '):].strip()
    if len(status) > 2:
        color = environ['__fish_prompt_branch_dirty']
    else:
        color = environ['__fish_prompt_branch']
    return (environ['__fish_prompt_cwd'], '(', color, branch, environ['__fish_prompt_cwd'], ')')

def symbol():
    try:
        environ['SSH_CONNECTION']
    except KeyError:
        sym = '> '
    else:
        sym = '= '
    return (environ['__fish_prompt_normal'], sym)

def write_prompt():
    for f in (pwd, virtualenv, branch, symbol):
        for p in f():
            if p:
                stdout.write(p)

write_prompt()

