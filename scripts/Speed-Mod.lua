-- Speed Modifier Script for Roblox
-- Made by distray#0001
-- Not for free use
-- Version: 1.0

-- Service Request & Local Parser

local User = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local GuiService = game:GetService("StarterGui")
local mouse = game.Players.LocalPlayer:GetMouse()

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("Distray's Speed Mod")
local Fly = Instance.new("Speed / Fly")
local walkspeed = Instance.new("Speed / Walk")
local wsframe = Instance.new("Frame")
local wsinput = Instance.new("Input")
local setws = Instance.new("SetWS")
local rews = Instance.new("Rews")
local wsclose = Instance.new("WS-Close")
local Close = Instance.new("Close")
local Open = Instance.new("Open")

local holdingWKey = false
local holdingSKey = false
local holdingAKey = false
local holdingDKey = false
local holdingSpaceKey = false
local holdingControlKey = false

keyboard.KeyDown:connect(function(key)
    if key == "N" then
        Speed_1 = Speed_1 + 0.2
            GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed has gone down";})
        end
end)

-- GUI Title Name and Border Radius

Title.Name = "Speed Modification 1.0"
Title.Parent = "Main"
Title.BackgroundColor3 = Color3.fromRGB(226, 151, 226)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 360, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeTransparency = 0.000
Title.TextWrapped = true

walkspeed.Name = "WLK SPD Modifier"
walkspeed.Parent = Main
walkspeed.BackgroundColor3 = Color3.fromRGB(255, 119, 242)
walkspeed.BorderSizePixel = 0
walkspeed.Position = UDim2.new(0.508333325, 0, 0.198731437, 0)
walkspeed.Size = UDim2.new(0, 153, 0, 55)
walkspeed.Font = Enum.Font.SourceSans
walkspeed.Text = "Set Speed"
walkspeed.TextColor3 = Color3.fromRGB(255, 255, 255)
walkspeed.TextScaled = true
walkspeed.TextSize = 14.000
walkspeed.TextStrokeTransparency = 0.000
walkspeed.TextWrapped = true
walkspeed.MouseButton1Click:Connect(function()
wsframe.Visible = true
Fly.Visible = false
end)

frame.Name = "wsframe"
frame.Parent = walkspeed
frame.BackgroundColor3 = Color3.fromRGB(255, 170, 255)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(-1.19607842, 0, -0.583201468, 0)
frame.Size = UDim2.new(0, 360, 0, 362)
frame.Visible = false

wsinput.Name = "wsinput"
wsinput.Parent = wsframe
wsinput.BackgroundColor3 = Color3.fromRGB(231, 154, 231)
wsinput.BorderSizePixel = 0
wsinput.Position = UDim2.new(0.163888887, 0, 0.0883977935, 0)
wsinput.Size = UDim2.new(0, 241, 0, 63)
wsinput.Font = Enum.Font.SourceSans
wsinput.Text = "Speed Value"
wsinput.TextColor3 = Color3.fromRGB(255, 255, 255)
wsinput.TextScaled = true
wsinput.TextSize = 14.000
wsinput.TextStrokeTransparency = 0.000
wsinput.TextWrapped = true
wsclose.MouseButton1Click:Connect(function()
wsframe.Visible = false
Fly.Visible = true
end)
 
setws.Name = "setws"
setws.Parent = frame
setws.BackgroundColor3 = Color3.fromRGB(221, 147, 221)
setws.BorderSizePixel = 0
setws.Position = UDim2.new(0.0472222231, 0, 0.331491709, 0)
setws.Size = UDim2.new(0, 143, 0, 51)
setws.Font = Enum.Font.SourceSans
setws.Text = "Set Walk Speed"
setws.TextColor3 = Color3.fromRGB(255, 255, 255)
setws.TextScaled = true
setws.TextSize = 14.000
setws.TextStrokeTransparency = 0.000
setws.TextWrapped = true
setws.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = wsinput.Text
end)
 
rews.Name = "rews"
rews.Parent = frame
rews.BackgroundColor3 = Color3.fromRGB(221, 147, 221)
rews.BorderSizePixel = 0
rews.Position = UDim2.new(0.508333325, 0, 0.331491709, 0)
rews.Size = UDim2.new(0, 153, 0, 51)
rews.Font = Enum.Font.SourceSans
rews.Text = "Reset Walk Speed"
rews.TextColor3 = Color3.fromRGB(255, 255, 255)
rews.TextScaled = true
rews.TextSize = 14.000
rews.TextStrokeTransparency = 0.000
rews.TextWrapped = true
rews.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
 
wsclose.Name = "wsclose"
wsclose.Parent = frame
wsclose.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
wsclose.BorderSizePixel = 0
wsclose.Position = UDim2.new(0.891666651, 0, 0, 0)
wsclose.Size = UDim2.new(0, 39, 0, 39)
wsclose.Font = Enum.Font.SourceSans
wsclose.Text = "X"
wsclose.TextColor3 = Color3.fromRGB(255, 255, 255)
wsclose.TextScaled = true
wsclose.TextSize = 14.000
wsclose.TextStrokeTransparency = 0.500
wsclose.TextWrapped = true
 
Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.891666651, 0, 0, 0)
Close.Size = UDim2.new(0, 39, 0, 39)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextStrokeTransparency = 0.500
Close.TextWrapped = true
Close.MouseButton1Click:Connect(function()
Main.Visible = false
Open.Visible = true
end)
 
Open.Name = "Open"
Open.Parent = ScreenGui
Open.BackgroundColor3 = Color3.fromRGB(255, 170, 255)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.566150188, 0)
Open.Size = UDim2.new(0, 92, 0, 22)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextStrokeTransparency = 0.500
Open.TextWrapped = true
Open.MouseButton1Click:Connect(function()
Main.Visible = true
Open.Visible = false
end)

local function JARSA_fly_script() -- ScreenGui
    local script = Instance.new('Script', ScreenGui)
     
    frame = script.Parent.Main 
    frame.Draggable = false
    frame.Active = true
    frame.Selectable = true
    end
    coroutine.wrap(JARSA_fly_script)()
