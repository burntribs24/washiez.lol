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
title.Position = UDim2.new(0.5, 0, 0.35807234, 0)
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
cont.Position = UDim2.new(0.499742866, 0, 0.64131248, 0)
cont.Size = UDim2.new(0.694958925, 0, 0.13488844, 0)
cont.Font = Enum.Font.SourceSansBold
cont.Text = "to fully complete the egg hunt, JOIN A NEW SERVER THEN: press Egg Hunt at the top and hit the 3 claim buttons."
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
kick.TextColor3 = Color3.fromRGB(0, 0, 0)
kick.TextScaled = true
kick.TextSize = 14.000
kick.TextWrapped = true

local function GEBG_fake_script()
	local script = Instance.new('LocalScript', Frame)

	local player = game.Players.LocalPlayer
	local label = script.Parent:WaitForChild("kick")
	
	local function updateLabelCountdown(seconds)
		label.Text = "You will be kicked in " .. seconds .. " seconds."
	end
	
	for i = 60, 1, -1 do
		updateLabelCountdown(i)
		wait(1)
	end
	
	player:Kick("completed egg hunt")
	
end
coroutine.wrap(GEBG_fake_script)()
local function PTVVBU_fake_script()
	local script = Instance.new('LocalScript', Frame)

	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	
	humanoid.WalkSpeed = 0
	humanoid.JumpPower = 0
	
end
coroutine.wrap(PTVVBU_fake_script)()
