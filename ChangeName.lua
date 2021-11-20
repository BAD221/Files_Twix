local function ChangeName(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local hid = Devhid:get("Twix:Name"..result.id_)
if not result.first_name_ then 
if hid then 
Devhid:del("Twix:Name"..result.id_) 
end
end
if result.first_name_ then 
if hid and hid ~= result.first_name_ then 
local hid_text = {
"اسمك "..result.first_name_.." ليش غيرته 🌚😹",
"وفف اسمكك الجديد يشكك، 🤤♥️ ",
"ليش غيرت اسمك "..result.first_name_.."\n قطيت احد حبي ؟ 🌚😹",
"اسمك "..result.first_name_.." فد شي وين زخرفته ؟، 🤤♥️", 
}
hids = math.random(#hid_text)
Dev_hid(msg.chat_id_, msg.id_, 1, hid_text[hids], 1, 'html')
end  
Devhid:set("Twix:Name"..result.id_, result.first_name_)  
end
end
end,nil) 
end
end

end
return {
Twix = ChangeName
}