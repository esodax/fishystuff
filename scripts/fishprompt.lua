-- vim:fileencoding=utf-8:ts=4:sw=4:et:ft=lua:

color_names = {
    __fish_prompt_normal             = 'normal',
    __fish_prompt_cwd                = 'cwd',
    __fish_prompt_virtualenv         = 'virtualenv',
    __fish_prompt_branch             = 'branch',
    __fish_prompt_branch_dirty       = 'branch_dirty',
    __fish_prompt_branch_cache_dirty = 'branch_cache_dirty'
}
colors = {}
for k, v in pairs(color_names) do
    colors[v] = os.getenv(k)
end
color_names = nil

prompt_flags = ''
if os.getenv('USER') == 'root' then
    colors['cwd'] = os.getenv('__fish_prompt_cwd_root')
    prompt_flags = '!'
end

function shortpath ()
    local pt = os.getenv('PWD'):gsub('^'..os.getenv('HOME'), '~')
    if #pt == 0 then
        pt = '/'
    else
        pt = pt:gsub('(.-)/', function (m)
                local c = m:sub(1, 1)
                if c == '.' then c = m:sub(2, 2) end
                return c:lower()..'/'
            end)
    end
    return {colors['cwd'], pt}
end

function virtualenv ()
    local vname = os.getenv('VIRTUAL_ENV')
    if not vname then
        return {}
    end
    vname = vname:sub(1 - vname:reverse():find('/'))
    return {colors['cwd'], '['; colors['virtualenv'], vname; colors['cwd'], ']'}
end

function branch ()
    local f = io.open('.git/HEAD')
    if not f then return {} end
    local head = f:read()
    f:close()
    local branch = head:match('/(%w+)$')
    local color
    if os.execute('git diff --quiet '..branch) ~= 0 then
        color = colors['branch_dirty']
    else
        color = colors['branch']
    end
    return {colors['cwd'], '('; color, branch; colors['cwd'], ')'}
end

function symbol ()
    local sym
    if os.getenv('SSH_CONNECTION') then
        sym = '= '
    else
        sym = '> '
    end
    return {colors['normal'], prompt_flags..sym}
end

for _, f in ipairs({shortpath, virtualenv, branch, symbol}) do
    for _, p in ipairs(f()) do
        if p then
            io.write(p)
        end
    end
end

