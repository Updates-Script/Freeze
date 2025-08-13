--// Trade freeze GUI  //--
local StarterGui = game:GetService("StarterGui")

-- Main ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GagTradeScam"
screenGui.Parent = game.CoreGui

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
title.Text = "GAG TRADE SCAM"
title.TextColor3 = Color3.fromRGB(255, 0, 0)
title.TextScaled = true
title.Parent = mainFrame

-- Made by text
local madeBy = Instance.new("TextLabel")
madeBy.Size = UDim2.new(1, 0, 0, 20)
madeBy.Position = UDim2.new(0, 0, 0, 30)
madeBy.BackgroundTransparency = 1
madeBy.Font = Enum.Font.Gotham
madeBy.Text = "made by V3xado"
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

-- Function to send notifications
local function notify(title, text)
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 3
    })
end

-- Button logic
local function setButtonState(button, isActive)
    if isActive then
        button.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- green
        button.TextColor3 = Color3.fromRGB(0, 0, 0)
    else
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- gray
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end

-- State
local onActive = false
local offActive = false

antiBan.MouseButton1Click:Connect(function()
    notify("Anti Ban", "Anti Ban On")
end)

onBtn.MouseButton1Click:Connect(function()
    if onActive then
        onActive = false
        setButtonState(onBtn, false)
    else
        onActive = true
        offActive = false
        setButtonState(onBtn, true)
        setButtonState(offBtn, false)
        notify("Trade Scam", "Turned On")
    end
end)

offBtn.MouseButton1Click:Connect(function()
    if offActive then
        offActive = false
        setButtonState(offBtn, false)
    else
        offActive = true
        onActive = false
        setButtonState(offBtn, true)
        setButtonState(onBtn, false)
        notify("Trade Scam", "Turned Off")
    end
end)
