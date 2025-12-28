--[[ OLIOS HUB | DELTA SAFE OBF ]]
-- DO NOT EDIT

local _0xA1=function(s)local t={}for i=1,#s do t[i]=string.char(string.byte(s,i)+1)end return table.concat(t)end
local _0xA2=function(s)local t={}for i=1,#s do t[i]=string.char(string.byte(s,i)-1)end return table.concat(t)end

task.spawn(function()
    pcall(function()
        repeat task.wait() until game:IsLoaded()
        local Players=game:GetService(_0xA2("Qmbzfst"))
        local LocalPlayer=Players.LocalPlayer
        repeat task.wait() until LocalPlayer

        local HttpService=game:GetService(_0xA2("IuuqTfswjdf"))
        local API=_0xA2("iuuqt://pmjptclju.po sfodfs.dpn")

        local key=getgenv().Key or getgenv().key or getgenv().OLIOS_KEY
        if not key then
            LocalPlayer:Kick("Missing Key")
            return
        end

        local hwid="UNKNOWN"
        pcall(function()
            hwid=game:GetService("RbxAnalyticsService"):GetClientId()
        end)

        local url=API.."/api/verify?key="..HttpService:UrlEncode(key).."&hwid="..HttpService:UrlEncode(hwid)
        local ok,body=pcall(function()
            return game:HttpGet(url)
        end)

        if not ok then
            LocalPlayer:Kick("API Error")
            return
        end

        local res=HttpService:JSONDecode(body)
        if not res.success then
            LocalPlayer:Kick(res.message or "Key Invalid")
            return
        end

        loadstring(game:HttpGet("https://raw.githubusercontent.com/haianh956/H-ianh/refs/heads/main/Oliosvl_Supportdelta.lua"))()
    end)
end)
