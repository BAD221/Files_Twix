local function ProNames(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text and (text:match("^وضع توحيد (.*)$") or text:match("^ضع توحيد (.*)$")) then
if Manager(msg) then
if Devhid:get(Twix.."hid:Lock:ProNames"..msg.chat_id_) then
local Txt = text:match("^وضع توحيد (.*)$") or text:match("^ضع توحيد (.*)$")
send(msg.chat_id_, msg.id_,'⌔︙تم تعيين ↫ '..Txt..' كتوحيد للمجموعه')
Devhid:set(Twix.."hid:ProNames:Txt"..msg.chat_id_,Txt)
else
send(msg.chat_id_, msg.id_,'⌔︙ميزة التوحيد معطله يرجى تفعيلها')
end
end
end
if text and (text:match("^تعين عدد الكتم (.*)$") or text:match("^تعيين عدد الكتم (.*)$")) then
if Manager(msg) then
if Devhid:get(Twix.."hid:Lock:ProNames"..msg.chat_id_) then
local Num = text:match("^تعين عدد الكتم (.*)$") or text:match("^تعيين عدد الكتم (.*)$")
send(msg.chat_id_, msg.id_,'⌔︙تم تعيين  ↫ '..Num..' عدد الكتم')
Devhid:set(Twix.."hid:ProNames:Num"..msg.chat_id_,Num)
else
send(msg.chat_id_, msg.id_,'⌔︙ميزة التوحيد معطله يرجى تفعيلها')
end
end
end
if Devhid:get(Twix.."hid:Lock:ProNames"..msg.chat_id_) then
if text == "التوحيد" or text == "توحيد" then
if Devhid:get(Twix.."hid:ProNames:Txt"..msg.chat_id_) then
local ProNamesTxt = Devhid:get(Twix.."hid:ProNames:Txt"..msg.chat_id_)
local ProNamesNum = Devhid:get(Twix.."hid:ProNames:Num"..msg.chat_id_) or 5
send(msg.chat_id_, msg.id_,'⌔︙التوحيد هو ↫ '..ProNamesTxt..'\n⌔︙عدد المحاولات للكتم ↫ '..ProNamesNum)
else
send(msg.chat_id_, msg.id_,'⌔︙لم يتم تعيين توحيد للمجموعه')
end
end
end
if not msg.forward_info_ and not Constructor(msg) then
if Devhid:get(Twix.."hid:Lock:ProNames"..msg.chat_id_) and Devhid:get(Twix.."hid:ProNames:Txt"..msg.chat_id_) then 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
if result and result.first_name_ then 
if result.first_name_:match("(.*)"..Devhid:get(Twix.."hid:ProNames:Txt"..msg.chat_id_).."(.*)") then 
Devhid:srem(Twix..'hid:Muted:'..msg.chat_id_, msg.sender_user_id_)
else
local ProNamesTxt = Devhid:get(Twix.."hid:ProNames:Num"..msg.chat_id_) or 5
local UserNum = Devhid:get(Twix.."hid:ProNames:UserNum"..msg.chat_id_..msg.sender_user_id_) or 0
if (tonumber(UserNum) == tonumber(ProNamesTxt) or tonumber(UserNum) > tonumber(ProNamesTxt)) then 
Devhid:sadd(Twix..'hid:Muted:'..msg.chat_id_, msg.sender_user_id_)
Devhid:del(Twix.."hid:ProNames:UserNum"..msg.chat_id_..msg.sender_user_id_)
send(msg.chat_id_, msg.id_,"⌔︙العضو ↫ ["..result.first_name_.."](https://t.me/"..(result.username_ or "Dev_Prox")..")\n⌔︙تم كتمه بسبب عدم وضع توحيد المجموعه بجانب اسمه")
else 
Devhid:incrby(Twix.."hid:ProNames:UserNum"..msg.chat_id_..msg.sender_user_id_,1)
send(msg.chat_id_, msg.id_, "⌔︙عذرا عزيزي ↫ ["..result.first_name_.."](https://t.me/"..(result.username_ or "Dev_Prox")..")\n⌔︙عليك وضع التوحيد ↫ `"..Devhid:get(Twix.."hid:ProNames:Txt"..msg.chat_id_).."` بجانب اسمك\n⌔︙عدد المحاولات المتبقيه ↫ "..(tonumber(ProNamesTxt) - tonumber(UserNum)).."")
end
end
end
end,nil)
end
end

if text == "تفعيل التوحيد" and Constructor(msg) then
send(msg.chat_id_, msg.id_, '⌔︙تم تفعيل توحيد المجموعه')
Devhid:set(Twix.."hid:Lock:ProNames"..msg.chat_id_,true)
end
if text == "تعطيل التوحيد" and Constructor(msg) then
send(msg.chat_id_, msg.id_, '⌔︙تم تعطيل توحيد المجموعه')
Devhid:del(Twix.."hid:Lock:ProNames"..msg.chat_id_)
end
end

end
return {
Twix = ProNames
}