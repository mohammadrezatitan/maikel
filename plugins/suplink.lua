--Start
 do
    local function run(msg, matches)
        local data = load_data(_config.moderation.data)
  if matches[1]== "addsup" and is_sudo(msg) or matches[1]== "تنظیم گروه پشتیبانی" and is_sudo(msg) then
   
local chk =  data["support"] 
  if chk then
  data["support"]["id"] = msg.chat_id_
    save_data(_config.moderation.data, data)
  return "ثبت نشد"
  else 
  data["support"] = {id = msg.chat_id_}
    save_data(_config.moderation.data, data)
  return "ثبت شد"
  end
    
  end

  if matches[1] == 'support' or matches[1] == 'پشتیبانی' then
  local support = data["support"]["id"]
  if support then
        local linkgp = data[tostring(support)]['settings']['linkgp']
    if not linkgp then 
    return "گروه پشتیبانی ثبت شد"
       end
    local text = "Support Group link:\n"..linkgp
      tdcli.sendMessage(msg.chat_id_, 0, 1, text, 1, 'html')
    else
    return 'گروه پشتیبانیثبت نیست'
    end
  end
end

return {
    patterns = {
    "^[!/#](support)$",
  "^[!/#](addsup)$",
  "^(پشتیبانی)$",
  "^(تنظیم گروه پشتیبانی)$"
 
     },
    run = run
}
end
--End by @Tele_Sudo
--Thanks @To0fan
--channel @luaError