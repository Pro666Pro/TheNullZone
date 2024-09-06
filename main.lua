local GameName = "The Null Zone 👏"

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({IntroText = "The Null Zone 👏", IntroIcon = "rbxassetid://15315284749",Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Tutorial"})

OrionLib:MakeNotification({Name = "Warning",Content = "Use at your own risk.",Image = "rbxassetid://7733658504",Time = 5})

if game.Workspace:FindFirstChild("VoidPart") == nil then
local VoidPart = Instance.new("Part", workspace)
VoidPart.Position = Vector3.new(538, 55, -231)
VoidPart.Name = "VoidPart"
VoidPart.Size = Vector3.new(2048, 11, 2048)
VoidPart.Anchored = true
VoidPart.Transparency = 1
VoidPart.CanCollide = false
end

local Script = Window:MakeTab({
	Name = "Script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Scripts = Script:AddSection({
	Name = "some cool scripts"
})

Scripts:AddButton({
	Name = "giang hub",
	Callback = function()
			 loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
	 end
})

Scripts:AddButton({
	Name = "fly gui v3",
	Callback = function()
			 loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
	 end
})

local Tab = Window:MakeTab({
	Name = "Anti",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Anti Null",
	Default = false,
	Callback = function(Value)
AntiNull = Value
while AntiNull do
for i,v in pairs(game.Workspace.Mobs:GetChildren()) do
if v.Name == "Imp" and v:FindFirstChild("Body") then
game:GetService("ReplicatedStorage").b:FireServer(v.Body)
end
end
task.wait()
end
	end    
})

Tab:AddToggle({
	Name = "Anti Cooldown",
	Default = false,
	Callback = function(Value)
AntiCooldown = Value
while AntiCooldown do
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local tool = character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
local localscript = tool:FindFirstChildOfClass("LocalScript")
local localscriptclone = localscript:Clone()
localscriptclone = localscript:Clone()
localscriptclone:Clone()
localscript:Destroy()
localscriptclone.Parent = tool
task.wait()
end
	end    
})

local Teleport = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tp = Teleport:AddSection({
	Name = "teleport"
})

Tp:AddButton({
	Name = "Teleport Get Null Glove",
	Callback = function()
			 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5459.34521484375, -189.00048828125, 1845.4388427734375)
	 end
})

Tp:AddButton({
	Name = "Teleport Get Tinkerer Glove",
	Callback = function()
			 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4845.7861328125, -214.0004119873047, 799.2669067382812)
	 end
})
