local function Reply(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if not Devhid:get(Twix..'hid:Lock:Reply'..msg.chat_id_) then
if text == "انجب" or text == "نجب" or text == "انجبي" or text == "نجبي" or text == "انجبو" or text == "نجبو" then
if Sudo(msg) then
rd = 'مطوريي اغلط شكد متريد نورتنه ، ♥️💪🏿'
elseif SudoBot(msg) then
rd = 'احترم نفسكك لا عبالكك رافعيك مطور ، 🖕🏿♥️'
elseif hidConstructor(msg) then
rd = 'تاج راسيي غير انت منشئ المجموعه ،🖐🏿♥️'
elseif Constructor(msg) then
rd = 'تاج راسيي انت المنشئ الاساسي ،🖐🏿♥️'
elseif BasicConstructor(msg) then
rd = 'حبيبي المنشئ استقبلها منكك ،👍🏿♥️'
elseif Manager(msg) then
rd = 'حبيبي راح اسامحكك لان مدير وع راسي ، 🖐🏿♥️'
elseif Admin(msg) then
rd = 'راح اسامحكك هلمره لانك ادمن ، ☝🏿♥️'
elseif VipMem(msg) then
rd = 'راح احترمكك تره بس هلمره لانك مميز عندي ، ☝🏿♥️'
else
rd = 'لكك هوه انت عضو وجاي تغلط ؟، 🖕🏿♥️'
end
Dev_hid(msg.chat_id_, msg.id_, 1,rd, 1, 'html')
end
if text == 'دي' or text == 'ديي' or text == 'دي بابه' then 
Twix =  "آخلُِآقٌڪڪ لُِڪڪ 𖠙 😒🔪"
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md') 
return false
end
if text == 'السلام عليكم' or text == 'سلام عليكم' then 
Twix =  "ياھَہّلْاا ۅﻋ̝̚لْيڪْم الْﺳ̭͠ لْام 𖠙 🤤♥️"
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md') 
return false
end
if text == '😭💔' or text == '😭😭' or text == '😭😭😭' or text == '😿💔' or text == '😭😭😭' or text == '😭😭😭😭' then 
Twix =  "مآآعٍآشُ آلُِي يزعٍلُِڪڪ 𖠙 😏♥️"
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md') 
return false
end
if text == '🌚💔' or text == '💔🌚' or text == '🚶‍♂💔' or text == '💔' or text == '😔💔' or text == '🚶‍♀💔' or text == '😭' then 
Twix =  "شبّيي اﻟ̣̣פﻟ̣̣و 𖠙 😿💔"
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md') 
return false
end
if text == 'باي' or text == 'بااي' or text == 'اروح' or text == 'اروح احسن' or text == 'اولي احسن' or text == 'راح اروح' or text == 'باي انام' then 
Twix =  "أُرٌجُعُ عٍيدِهآآ مٍوو تنِْسةه 𖠙 🤤♥️"
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md') 
return false
end
if text == 'هلو' or text == 'هلاو' or text == 'هلا' or text == 'هلاوو' or text == 'هيلاو' or text == 'هيلاوو' or text == 'هلاا' then 
local Twix = {"اࠗط็لق֯ق֯ هٞللاࠗ୨و 𖠙 🤤♥️" ,"هۂَلاا نۨہٰورتت يعمۘري 𖠙 🤤♥️" } 
Devhid2 = math.random(#Twix) 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix[Devhid2] , 1, 'md') 
return false
end
if text == 'شونك' or text == 'شونج' or text == 'شلونك' or text == 'شلونج' or text == 'شونكم' or text == 'شلونكم' or text == 'شلخبار' or text == 'شلون الاخبار' or text == 'شخبارك' then 
local Twix = {"ماﺷ͠ يةھَہّ يﻋ̝̚مريي ۅاﻧﺗ̲ت 𖠙 🤤♥️" ,"الحۡمۘدللهۂَ ٰوانۨہتت 𖠙 🤤♥️","تمۘامۘ عمۘري ٰوانۨہتت 𖠙 🤤♥️"} 
Devhid2 = math.random(#Twix) 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix[Devhid2] , 1, 'md') 
return false
end
if text == 'وينك' or text == 'وينج' then
Twix =  "مْوٌجہوٌدِ يہمْگُ يحلوُ 𖠙 😉♥️"
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md') 
return false
end
if text == 'بوت عواي' or text == 'بوت زربه' or text == 'البوت عاوي' or text == 'البوت زربه' then
Twix =  "اطردكك تجرب ؟ ، 😕🔪"
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md') 
return false
end
if text == 'نايمين' or text == 'ميتين' then
Twix =  "طُآمسين ووعٍيوونڪ 𖠙 😪🖤ۦ"
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md') 
return false
end
if text == 'هلوباي' or text == 'هلو باي' then  
Twix =  "شحۡسۜيت مۘنۨہ هيجۚ ּكتبت ؟ 🌝♥️"
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md') 
return false
end
if text == 'اكلك' or text == 'اكلج' or text == 'اكلكم' then 
Twix =  "ڪوولُِ مآڪوولُِ لُِآحٍدِ 𖠙 😉♥️"
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == 'فرخ' or text == 'فرخه' then
Twix =  "ٰوينۨہهۂَ خۡل احۡصرهۂَ 𖠙 😹♥️" 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md') 
return false
end
if text == 'سورس حيدر' or text == 'سورس تويكس' or text == 'سورس تويكس' or text == 'سورس زربه' or text == 'السورس زربه' or text == 'سورس عاوي' or text == 'السورس عاوي' then 
Twix =  "لُِآ سوورس خآلُِتڪ دِي لُِڪ 𖠙 😒🔪" 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == 'بوسني' or text == 'بوسيني' then 
Twix =  "-محِااﭑةه ، ݪسِقق  🥺♥️♥️؟." 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == "صباحوا" or text == "صباح الخير" or text == "صباحو" then
Twix =  "صَباحيّ ، ﭑنتةه🥺💞💞." 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == "اكو بوت" or text == "اكو بوت؟" or text == "عدكم بوت" or text == "عندكم بوت" or text == "عدكم بوت؟" or text == "عندكم بوت؟" or text == "تردون بوت" or text == "تردون بوت؟" or text == "وين البوت" or text == "وين البوت؟" then
Twix =  "-موَ بعَينڪۃ ، شنيَ ، 🌝🌝." 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == "جاو" or text == "ججاو" then
Twix =  "- ۅَتعۅفنيَ ؟." 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == "تف" or text == "تفف" then
Twix =  "چا غير مَي ، ۅࢪدَ ،" 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == "تحبني" or text == "تحبني؟" or text == "تحبني؟؟" then
Twix =  "شعندِيّ ، غيࢪكَ🥵♥️♥️♥️" 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == "جوعان" or text == "جوعانه" then
Twix =  "ټعاَل ﭑڪلنيَ ، 🌝." 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == "ههه" or text == "هههه" or text == "ههههه" or text == "هههههه" or text == "ههههههه" then
Twix =  "جَعل ، محدَ غيݛكَ ، يضحكَ  ، ♥️♥️" 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == "وينكم" then
Twix =  "حَيݪيٰ ، 🥺💞" 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == "احبك" or text == "حبك" then
Twix =  "ﭑنيۿمَ ، قسمَہ، 🥺💞" 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == "بوت ملطلط" then
Twix =  "ربي صبرني 😞🌾" 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
if text == 'وينك' or text == 'وينج' then
Twix =  "مْوٌجہوٌدِ يہمْگُ يحلوُ  😉♥️" 
Dev_hid(msg.chat_id_, msg.id_, 1, Twix, 1, 'md')
return false
end
end

if Manager(msg) then
if text == 'تفعيل ردود البوت' or text == 'تفعيل الردود' then
if not Devhid:get(Twix..'hid:Lock:Reply'..msg.chat_id_) then
Dev_hid(msg.chat_id_, msg.id_, 1, '⌔︙ردود البوت بالتاكيد مفعله ', 1, 'md')
else
Dev_hid(msg.chat_id_, msg.id_, 1, '⌔︙تم تفعيل ردود البوت', 1, 'md')
Devhid:del(Twix..'hid:Lock:Reply'..msg.chat_id_)
end end
if text == 'تعطيل ردود البوت' or text == 'تعطيل الردود' then
if Devhid:get(Twix..'hid:Lock:Reply'..msg.chat_id_) then
Dev_hid(msg.chat_id_, msg.id_, 1, '⌔︙ردود البوت بالتاكيد معطله ', 1, 'md')
else
Devhid:set(Twix..'hid:Lock:Reply'..msg.chat_id_,true)
Dev_hid(msg.chat_id_, msg.id_, 1, '⌔︙تم تعطيل ردود البوت', 1, 'md')
end end
end
end

end
return {
Twix = Reply
}
