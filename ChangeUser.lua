local function ChangeUser(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local hid = Devhid:get("Twix:User"..result.id_)
if not result.username_ then 
if hid then 
Dev_hid(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بسرعه، 😹💔 \nهذا معرفه @"..hid.."", 1, 'html')
Devhid:del("Twix:User"..result.id_) 
end
end
if result.username_ then 
if hid and hid ~= result.username_ then 
local hid_text = {
'معرفك الجديد عشره بربع محد ياخذه😹💔',
"هاها غيرت معرفك نشروك بقناة فضايح😹💔💭",
"معرفك الجديد حلو منين خامطه؟!🤤♥️",
"معرفك القديم @"..result.username_.." ضمه بقناة لاينبعص، 😹♥️",
}
hids = math.random(#hid_text)
Dev_hid(msg.chat_id_, msg.id_, 1, hid_text[hids], 1, 'html')
end  
Devhid:set("Twix:User"..result.id_, result.username_) 
end
end
end,nil) 
end
end

end
return {
Twix = ChangeUser
}