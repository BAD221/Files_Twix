local function ChangePhoto(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local Hid = DevHid:get("Twix:Photo"..result.id_)
if not result.profile_photo_ then 
if Hid then 
Dev_Hid(msg.chat_id_, msg.id_, 1, "حذف كل صوره مضروب بوري، 😹💔", 1, 'html')
DevHid:del("Twix:Photo"..result.id_) 
end
end
if result.profile_photo_ then 
if Hid and Hid ~= result.profile_photo_.big_.persistent_id_ then 
local Hid_text = {
"وفف مو صوره غنبلةة، 🤤♥️",
"طالع صاكك بالصوره الجديده ممكن نرتبط؟ ، 🤤♥️",
"حطيت صوره جديده عود شوفوني اني صاكك بنات، 😹♥️",
"اححح شنيي هالصوره الجديده، 🤤♥️",
}
Hid3 = math.random(#hid_text)
Dev_Hid(msg.chat_id_, msg.id_, 1, hid_text[Hid3], 1, 'html')
end  
DevHid:set("Twix:Photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end
end
end,nil) 
end
end

end
return {
Twix = ChangePhoto
}
