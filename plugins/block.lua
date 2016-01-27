Skip to content
This repository  
Search
Pull requests
Issues
Gist
 @abbasgh12345
 Watch 1
  Star 0
 Fork 2 Creedsteam/creed
 Code  Issues 0  Pull requests 0  Wiki  Pulse  Graphs
Branch: master Find file Copy pathcreed/plugins/Block.lua
ac6f3d1  23 days ago
@Kosenanats Kosenanats Rename block.lua to Block.lua
1 contributor
RawBlameHistory     34 lines (32 sloc)  783 Bytes
do
-- https://github.com/SEEDTEAM/TeleSeed --
local function block_user_callback(cb_extra, success, result)
  local receiver = cb_extra.receiver
  local user = 'user#id'..result.id
  if success == 0 then
    return send_large_msg(receiver, "I cant block user.")
  end
  block_user(user, cb_ok, false)
end
end
local function run(msg, matches)
 if msg.to.type == 'chat' then
    local user = 'chat#id'..msg.to.id
 local user = matches[2]
  if matches[1] == "user" then
      user = 'user#id'..user
      block_user(user, callback, false)
    end
    if not is_sudo(msg) then
    return "sicktir baw only sudo😡!"
  end
    return "User Has Been Blocked"
  end
end
 
return {
  patterns = {
    "^!block (user) (%d+)$",
  },
  run = run,
 -- https://github.com/SEEDTEAM/TeleSeed --
}
Status API Training Shop Blog About Pricing
© 2016 GitHub, Inc. Terms Privacy Security Contact Help
