local function create_group(msg)
    if is_sudo(msg) then
    local group_creator = msg.from.print_name
    create_group_chat (group_creator, group_name, ok_cb, false)
    return 'Group [ '..string.gsub(group_name, '_', ' ')..' ] has been created.'
  end
end
local function run(msg, matches)
 if matches[1] == 'cgp' and matches[2] then
        group_name = matches[2]
        group_type = 'group'
        return create_group(msg)
    end
end
return {
  patterns = {
    "^[#!/](cgp) (.*)$",
  },
  run = run
}