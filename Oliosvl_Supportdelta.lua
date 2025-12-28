
-- Olios Delta-Safe Heavy Obfuscation (v1)
-- Delta-friendly (no debug traps)

local _s = string.char
local _t = table.concat
local _g = getgenv

local function _d(a)
    local r = {}
    for i=1,#a do r[#r+1] = _s(a[i]) end
    return _t(r)
end

repeat task.wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer

local API = _d({104,116,116,112,115,58,47,47,111,108,105,111,115,98,107,105,116,46,111,110,114,101,110,100,101,114,46,99,111,109})

local K = _g().Key
if not K then
    LocalPlayer:Kick(_d({77,105,115,115,105,110,103,32,75,101,121}))
    return
end

local H = "UNKNOWN"
pcall(function()
    H = game:GetService("RbxAnalyticsService"):GetClientId()
end)

local function _v()
    local u = API .. _d({47,97,112,105,47,118,101,114,105,102,121,63,107,101,121,61})
        .. HttpService:UrlEncode(K)
        .. _d({38,104,119,105,100,61})
        .. HttpService:UrlEncode(H)
    local ok, body = pcall(function()
        return game:HttpGet(u)
    end)
    if not ok then return false, _d({65,80,73,32,69,114,114,111,114}) end
    local res = HttpService:JSONDecode(body)
    if not res or not res.success then
        return false, res and res.message or _d({75,101,121,32,73,110,118,97,108,105,100})
    end
    return true, _d({75,101,121,32,79,75})
end

local ok,msg = _v()
if not ok then
    LocalPlayer:Kick(msg)
    return
end

task.spawn(function()
    pcall(function()
        local lib = loadstring(game:HttpGet(_d({
            104,116,116,112,115,58,47,47,103,105,116,104,117,98,46,99,111,109,47,100,97,119,105,100,45,115,99,114,105,112,116,115,47,70,108,117,101,110,116,47,114,101,108,101,97,115,101,115,47,108,97,116,101,115,116,47,100,111,119,110,108,111,97,100,47,109,97,105,110,46,108,117,97
        })))()

        local win = lib:CreateWindow({
            Title = "Olios Hub | Premium",
            SubTitle = "Blox Fruits",
            TabWidth = 160,
            Theme = "Dark",
            Size = UDim2.fromOffset(520, 350),
            MinimizeKey = Enum.KeyCode.End
        })

        local t1 = win:AddTab({Title="Home"})
        local t2 = win:AddTab({Title="Farm"})
        t1:AddParagraph({Title="Status", Content="Key verified • Delta OK"})
        t2:AddButton({Title="Farm Placeholder", Description="Merge your farm logic here", Callback=function() end})
    end)
end)
