--// GAG TRADE SCAM - Visual Only Prank GUI with Toggle Effect
--// 100% Harmless - For visual/prank purposes only

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Subtitle = Instance.new("TextLabel")
local Note = Instance.new("TextLabel")
local OnButton = Instance.new("TextButton")
local OffButton = Instance.new("TextButton")
local UICornerMain = Instance.new("UICorner")
local UICornerBtn1 = Instance.new("UICorner")
local UICornerBtn2 = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.35, 0, 0.35, 0)
MainFrame.Size = UDim2.new(0, 300, 0, 160)

UICornerMain.CornerRadius = UDim.new(0, 10)
UICornerMain.Parent = MainFrame

-- Title
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Position = UDim2.new(0, 0, 0, 5)
Title.Font = Enum.Font.GothamBold
Title.Text = "GAG TRADE SCAM"
Title.TextColor3 = Color3.fromRGB(255, 85, 85)
Title.TextSize = 20

-- Subtitle
Subtitle.Parent = MainFrame
Subtitle.BackgroundTransparency = 1
Subtitle.Size = UDim2.new(1, 0, 0, 20)
Subtitle.Position = UDim2.new(0, 0, 0, 35)
Subtitle.Font = Enum.Font.Gotham
Subtitle.Text = "made by V3xado"
Subtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Subtitle.TextSize = 14

-- Anti Ban
local AntiBan = Instance.new("TextLabel")
AntiBan.Parent = MainFrame
AntiBan.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
AntiBan.Position = UDim2.new(0.15, 0, 0.45, 0)
AntiBan.Size = UDim2.new(0, 200, 0, 25)
AntiBan.Font = Enum.Font.GothamBold
AntiBan.Text = "ANTI BAN BYPASS ☠️"
AntiBan.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiBan.TextSize = 14
UICornerBtn1.Parent = AntiBan

-- Note
Note.Parent = MainFrame
Note.BackgroundTransparency = 1
Note.Size = UDim2.new(1, 0, 0, 20)
Note.Position = UDim2.new(0, 0, 0, 95)
Note.Font = Enum.Font.Gotham
Note.Text = "**Must be on trade before using!**"
Note.TextColor3 = Color3.fromRGB(255, 255, 255)
Note.TextSize = 12

-- On Button
OnButton.Parent = MainFrame
OnButton.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
OnButton.Position = UDim2.new(0.15, 0, 0.75, 0)
OnButton.Size = UDim2.new(0, 80, 0, 30)
OnButton.Font = Enum.Font.GothamBold
OnButton.Text = "ON"
OnButton.TextColor3 = Color3.fromRGB(0, 0, 0)
OnButton.TextSize = 14
UICornerBtn2.Parent = OnButton

-- Off Button
OffButton.Parent = MainFrame
OffButton.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
OffButton.Position = UDim2.new(0.55, 0, 0.75, 0)
OffButton.Size = UDim2.new(0, 80, 0, 30)
OffButton.Font = Enum.Font.GothamBold
OffButton.Text = "OFF"
OffButton.TextColor3 = Color3.fromRGB(0, 0, 0)
OffButton.TextSize = 14
local UICornerBtn3 = Instance.new("UICorner")
UICornerBtn3.Parent = OffButton

-- Toggle Effect
local function setOn()
	OnButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green
	OffButton.BackgroundColor3 = Color3.fromRGB(180, 180, 180) -- Reset OFF
	print("ON button clicked (visual only)")
end

local function setOff()
	OffButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red
	OnButton.BackgroundColor3 = Color3.fromRGB(180, 180, 180) -- Reset ON
	print("OFF button clicked (visual only)")
end

OnButton.MouseButton1Click:Connect(setOn)
OffButton.MouseButton1Click:Connect(setOff)
