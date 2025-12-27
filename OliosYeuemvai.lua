
-- Olios Premium DELTA MERGED (Light Obf)
if not game:IsLoaded() then game.Loaded:Wait() end
local Players=game:GetService("Players")
local lp=Players.LocalPlayer
local pg=lp:WaitForChild("PlayerGui")

if pg:FindFirstChild("OliosUI") then pg.OliosUI:Destroy() end

local function _k() return string.char(79,76,73,79,83,45,49,50,51) end

local ui=Instance.new("ScreenGui")
ui.Name="OliosUI"
ui.ResetOnSpawn=false
ui.Parent=pg

local fr=Instance.new("Frame",ui)
fr.Size=UDim2.fromScale(0.45,0.35)
fr.Position=UDim2.fromScale(0.275,0.3)
fr.BackgroundColor3=Color3.fromRGB(25,25,25)

local tl=Instance.new("TextLabel",fr)
tl.Size=UDim2.fromScale(1,0.25)
tl.BackgroundTransparency=1
tl.Text="Olios Premium"
tl.TextColor3=Color3.new(1,1,1)
tl.TextScaled=true

local bx=Instance.new("TextBox",fr)
bx.Size=UDim2.fromScale(0.9,0.25)
bx.Position=UDim2.fromScale(0.05,0.35)
bx.PlaceholderText="Enter key"
bx.TextScaled=true

local bt=Instance.new("TextButton",fr)
bt.Size=UDim2.fromScale(0.5,0.2)
bt.Position=UDim2.fromScale(0.25,0.65)
bt.Text="Submit"
bt.TextScaled=true

local function run_main()
-- === FARM SCRIPT START ===

-- OliosPremium_DELTA_SAFE_OBF.lua
-- Light obfuscation, Delta Android safe

if not game:IsLoaded() then game.Loaded:Wait() end

local S=game:GetService
local P=S(game,"Players").LocalPlayer
local G=P:WaitForChild("PlayerGui")

local _a=Instance.new("ScreenGui")
_a.Name="OPUI"
_a.ResetOnSpawn=false
_a.Parent=G

local _b=Instance.new("Frame",_a)
_b.Size=UDim2.fromScale(0.4,0.25)
_b.Position=UDim2.fromScale(0.3,0.35)
_b.BackgroundColor3=Color3.fromRGB(25,25,25)
_b.BorderSizePixel=0

local _c=Instance.new("TextLabel",_b)
_c.Size=UDim2.fromScale(1,0.3)
_c.BackgroundTransparency=1
_c.Text="Olios Premium"
_c.TextColor3=Color3.new(1,1,1)
_c.TextScaled=true

local _d=Instance.new("TextBox",_b)
_d.Size=UDim2.fromScale(0.9,0.25)
_d.Position=UDim2.fromScale(0.05,0.35)
_d.PlaceholderText="Enter Key"
_d.Text=""
_d.TextScaled=true

local _e=Instance.new("TextButton",_b)
_e.Size=UDim2.fromScale(0.5,0.2)
_e.Position=UDim2.fromScale(0.25,0.65)
_e.Text="Submit"
_e.TextScaled=true

local function _k()
    return string.char(79,76,73,79,83,45,49,50,51) -- OLIOS-123
end

_e.MouseButton1Click:Connect(function()
    if _d.Text==_k() then
        _b:Destroy()
        local _m=Instance.new("TextLabel",_a)
        _m.Size=UDim2.fromScale(0.4,0.2)
        _m.Position=UDim2.fromScale(0.3,0.4)
        _m.Text="MENU LOADED"
        _m.TextColor3=Color3.new(0,1,0)
        _m.TextScaled=true
        _m.BackgroundColor3=Color3.fromRGB(20,20,20)
    else
        _d.Text=""
        _d.PlaceholderText="Wrong Key"
    end
end)

-- === FARM SCRIPT END ===
end

bt.MouseButton1Click:Connect(function()
    if bx.Text==_k() then
        fr:Destroy()
        run_main()
    else
        bx.Text=""
        bx.PlaceholderText="Wrong key"
    end
end)
