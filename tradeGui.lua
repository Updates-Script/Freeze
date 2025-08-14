--// Gag Trade freeze (PlayerGui Safe) //--
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Create ScreenGui inside PlayerGui with random name
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GagTrade_" .. math.random(1000, 9999)
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 350, 0, 180)
mainFrame.Position = UDim2.new(0.5, -175, 0.5, -90)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.Text = "GAG TRADE FREEZE"
title.TextColor3 = Color3.fromRGB(255, 0, 0)
title.TextScaled = true
title.Parent = mainFrame

-- Made by text
local madeBy = Instance.new("TextLabel")
madeBy.Size = UDim2.new(1, 0, 0, 20)
madeBy.Position = UDim2.new(0, 0, 0, 30)
madeBy.BackgroundTransparency = 1
madeBy.Font = Enum.Font.Gotham
madeBy.Text = "made by Minami"
madeBy.TextColor3 = Color3.fromRGB(255, 255, 255)
madeBy.TextScaled = true
madeBy.Parent = mainFrame

-- Anti Ban Button
local antiBan = Instance.new("TextButton")
antiBan.Size = UDim2.new(0.9, 0, 0, 40)
antiBan.Position = UDim2.new(0.05, 0, 0, 60)
antiBan.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
antiBan.Font = Enum.Font.GothamBold
antiBan.Text = "ANTI BAN BYPASS ☠️"
antiBan.TextColor3 = Color3.fromRGB(255, 255, 255)
antiBan.TextScaled = true
antiBan.Parent = mainFrame

-- Info text
local info = Instance.new("TextLabel")
info.Size = UDim2.new(1, 0, 0, 20)
info.Position = UDim2.new(0, 0, 0, 105)
info.BackgroundTransparency = 1
info.Font = Enum.Font.Gotham
info.Text = "**Must be on trade before using!**"
info.TextColor3 = Color3.fromRGB(255, 255, 255)
info.TextScaled = true
info.Parent = mainFrame

-- ON Button
local onBtn = Instance.new("TextButton")
onBtn.Size = UDim2.new(0.45, 0, 0, 30)
onBtn.Position = UDim2.new(0.05, 0, 0, 140)
onBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
onBtn.Font = Enum.Font.GothamBold
onBtn.Text = "ON"
onBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
onBtn.TextScaled = true
onBtn.Parent = mainFrame

-- OFF Button
local offBtn = Instance.new("TextButton")
offBtn.Size = UDim2.new(0.45, 0, 0, 30)
offBtn.Position = UDim2.new(0.5, 0, 0, 140)
offBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
offBtn.Font = Enum.Font.GothamBold
offBtn.Text = "OFF"
offBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
offBtn.TextScaled = true
offBtn.Parent = mainFrame

-- Toggle color logic
local function setButtonColor(btn, isOn)
    if isOn then
        btn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    else
        btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    end
end

local onState, offState = false, false

onBtn.MouseButton1Click:Connect(function()
    if not onState then
        onState, offState = true, false
        setButtonColor(onBtn, true)
        setButtonColor(offBtn, false)
        StarterGui:SetCore("SendNotification", {Title = "Trade Scam", Text = "Turned On", Duration = 3})
    else
        onState = false
        setButtonColor(onBtn, false)
    end
end)

offBtn.MouseButton1Click:Connect(function()
    if not offState then
        offState, onState = true, false
        setButtonColor(offBtn, true)
        setButtonColor(onBtn, false)
        StarterGui:SetCore("SendNotification", {Title = "Trade Scam", Text = "Turned Off", Duration = 3})
    else
        offState = false
        setButtonColor(offBtn, false)
    end
end)

antiBan.MouseButton1Click:Connect(function()
    StarterGui:SetCore("SendNotification", {
        Title = "Anti Ban",
        Text = "Anti Ban On",
        Duration = 3
    })
end)
