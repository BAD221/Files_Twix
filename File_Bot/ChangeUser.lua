local function ChangeUser(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local Hid = DevHid:get("Twix:User"..result.id_)
if not result.username_ then 
if Hid then 
Dev_Hid(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بسرعه، 😹💔 \nهذا معرفه @"..Hid.."", 1, 'html')
DevHid:del("Twix:User"..result.id_) 
end
end
if result.username_ then 
if Hid and Hid ~= result.username_ then 
local Hid_text = {
'معرفك الجديد عشره بربع محد ياخذه😹💔',
"هاها غيرت معرفك نشروك بقناة فضايح😹💔💭",
"معرفك الجديد حلو منين خامطه؟!🤤♥️",
"معرفك القديم @"..result.username_.." ضمه بقناة لاينبعص، 😹♥️",
}
Hids = math.random(#Hid_text)
Dev_Hid(msg.chat_id_, msg.id_, 1, Hid_text[Hids], 1, 'html')
end  
DevHid:set("Twix:User"..result.id_, result.username_) 
end
end
end,nil) 
end
end

end
return {
Twix = ChangeUser
}
