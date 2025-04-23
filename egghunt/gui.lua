local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local cont = Instance.new("TextLabel")
local kick = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(40, 118, 53)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(1, 0, 1, 0)

title.Name = "title"
title.Parent = Frame
title.AnchorPoint = Vector2.new(0.5, 0.5)
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.5, 0, 0.146104798, 0)
title.Size = UDim2.new(0.266460896, 0, 0.0973630846, 0)
title.Font = Enum.Font.SourceSansBold
title.Text = "washiez.lol"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

cont.Name = "cont"
cont.Parent = Frame
cont.AnchorPoint = Vector2.new(0.5, 0.5)
cont.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cont.BackgroundTransparency = 1.000
cont.BorderColor3 = Color3.fromRGB(0, 0, 0)
cont.BorderSizePixel = 0
cont.Position = UDim2.new(0.499742866, 0, 0.520115733, 0)
cont.Size = UDim2.new(0.694958985, 0, 0.375253588, 0)
cont.Font = Enum.Font.SourceSansBold
cont.Text = "To Fully Complete:\n\n\n1. Wait until you rejoin\n2. Open the \"Egg Hunt\" UI at the top of screen\n3. Press the 3 claim buttons\nYou're done!"
cont.TextColor3 = Color3.fromRGB(0, 0, 0)
cont.TextScaled = true
cont.TextSize = 14.000
cont.TextWrapped = true

kick.Name = "kick"
kick.Parent = Frame
kick.AnchorPoint = Vector2.new(0.5, 0.5)
kick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
kick.BackgroundTransparency = 1.000
kick.BorderColor3 = Color3.fromRGB(0, 0, 0)
kick.BorderSizePixel = 0
kick.Position = UDim2.new(0.499742806, 0, 0.854462504, 0)
kick.Size = UDim2.new(0.511831284, 0, 0.0385395549, 0)
kick.Font = Enum.Font.SourceSansBold
kick.Text = "you will be auto kicked in {} seconds"
kick.TextColor3 = Color3.fromRGB(255, 41, 45)
kick.TextScaled = true
kick.TextSize = 14.000
kick.TextWrapped = true

local function BDNCHBZ_fake_script()
	local script = Instance.new('LocalScript', Frame)

	local player = game.Players.LocalPlayer
	local label = script.Parent:WaitForChild("kick")
	
	local function updateLabelCountdown(seconds)
		label.Text = "Rejoining in " .. seconds .. " seconds..."
	end
	
	for i = 15, 1, -1 do
		updateLabelCountdown(i)
		wait(1)
	end
	
	game:GetService("TeleportService"):Teleport(game.PlaceId, player)
	
end
coroutine.wrap(BDNCHBZ_fake_script)()
local function GLFERCQ_fake_script()
	local script = Instance.new('LocalScript', Frame)

	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	
	humanoid.WalkSpeed = 0
	humanoid.JumpPower = 0
	
end
coroutine.wrap(GLFERCQ_fake_script)()
