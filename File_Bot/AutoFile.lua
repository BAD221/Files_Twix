local function AutoFile(msg)
local text = msg.content_.text_

if (text and not DevHid:get(Twix.."Hid:Lock:AutoFile")) then
Time = DevHid:get(Twix.."Hid:AutoFile:Time")
if Time then 
if Time ~= os.date("%x") then 
local list = DevHid:smembers(Twix..'Hid:Groups') 
local Users = DevHid:smembers(Twix..'Hid:Users') 
local BotName = (DevHid:get(Twix.."Hid:NameBot") or 'تويكس')
local GetJson = '{"BotId": '..Twix..',"BotName": "'..BotName..'","GroupsList":{'  
for k,v in pairs(list) do 
LinkGroups = DevHid:get(Twix.."Hid:Groups:Links"..v)
Welcomes = DevHid:get(Twix..'Hid:Groups:Welcomes'..v) or ''
HidConstructors = DevHid:smembers(Twix..'Hid:HidConstructor:'..v)
BasicConstructors = DevHid:smembers(Twix..'Hid:BasicConstructor:'..v)
Constructors = DevHid:smembers(Twix..'Hid:Constructor:'..v)
Managers = DevHid:smembers(Twix..'Hid:Managers:'..v)
Admis = DevHid:smembers(Twix..'Hid:Admins:'..v)
Vips = DevHid:smembers(Twix..'Hid:VipMem:'..v)
if k == 1 then
GetJson = GetJson..'"'..v..'":{'
else
GetJson = GetJson..',"'..v..'":{'
end
if #User ~= 0 then 
GetJson = GetJson..'"Users":['
for k,v in pairs(Users) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Vips ~= 0 then 
GetJson = GetJson..'"Vips":['
for k,v in pairs(Vips) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Admis ~= 0 then
GetJson = GetJson..'"Admis":['
for k,v in pairs(Admis) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Managers ~= 0 then
GetJson = GetJson..'"Managers":['
for k,v in pairs(Managers) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #Constructors ~= 0 then
GetJson = GetJson..'"Constructors":['
for k,v in pairs(Constructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #BasicConstructors ~= 0 then
GetJson = GetJson..'"BasicConstructors":['
for k,v in pairs(BasicConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if #HidConstructors ~= 0 then
GetJson = GetJson..'"HidConstructors":['
for k,v in pairs(HidConstructors) do
if k == 1 then
GetJson =  GetJson..'"'..v..'"'
else
GetJson =  GetJson..',"'..v..'"'
end
end   
GetJson = GetJson..'],'
end
if LinkGroups then
GetJson = GetJson..'"LinkGroups":"'..LinkGroups..'",'
end
GetJson = GetJson..'"Welcomes":"'..Welcomes..'"}'
end
GetJson = GetJson..'}}'
local File = io.open('./'..Twix..'.json', "w")
File:write(GetJson)
File:close()
local Hid = 'https://api.telegram.org/bot' .. TokenBot .. '/sendDocument'
local curl = 'curl "' .. Hid .. '" -F "chat_id='..Twix..'" -F "document=@'..Twix..'.json' .. '" -F "caption=⌯︙نسخه تلقائيه تحتوي على ↫ '..#list..' مجموعه\n⌯︙وتحتوي ايضاَ علئ ↫ '..#Users..' مشترك\n•-› ✓"'
io.popen(curl)
io.popen('fm -fr '..Twix..'.json')
DevHid:set(Twix.."Hid:AutoFile:Time",os.date("%x"))
end
else 
DevHid:set(Twix.."Hid:AutoFile:Time",os.date("%x"))
end
end

end
return {
Twix = AutoFile
}
