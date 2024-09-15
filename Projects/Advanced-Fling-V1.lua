-- // REDISTRIBUTING IS STRICTLY FORBIDDEN. MAY RESULT IN LEGAL ACTION \\ --

--[[
loadstring below

loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperBlueEyeBall/RobloxScripts/main/Projects/Advanced-Fling-V1.lua"))()

loadstring above
--]]


-- // INSTANCES: 39 | SCRIPTS: 5 | MODULES: 0 \\ --

local UI = {}

-- // StarterGui.SimpleFling \\ --
UI["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
UI["1"]["Name"] = [[SimpleFling]]

-- // StarterGui.SimpleFling.UI \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["2"]["Size"] = UDim2.new(0, 322, 0, 109)
UI["2"]["Position"] = UDim2.new(0.73, 140, 0.493, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["Name"] = [[UI]]

-- // StarterGui.SimpleFling.UI.UICorner \\ --
UI["3"] = Instance.new("UICorner", UI["2"])
UI["3"]["CornerRadius"] = UDim.new(0, 17)

-- // StarterGui.SimpleFling.UI.UIStroke \\ --
UI["4"] = Instance.new("UIStroke", UI["2"])
UI["4"]["Transparency"] = 0.8
UI["4"]["Thickness"] = 4
UI["4"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.SimpleFling.UI.logo \\ --
UI["5"] = Instance.new("ImageLabel", UI["2"])
UI["5"]["BorderSizePixel"] = 0
UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["5"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["5"]["Image"] = [[rbxassetid://10734920149]]
UI["5"]["Size"] = UDim2.new(0, 27, 0, 27)
UI["5"]["Visible"] = false
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["BackgroundTransparency"] = 1
UI["5"]["Name"] = [[logo]]
UI["5"]["Position"] = UDim2.new(0.5, 0, 0, 10)

-- // StarterGui.SimpleFling.UI.logo.LocalScript \\ --
UI["6"] = Instance.new("LocalScript", UI["5"])


-- // StarterGui.SimpleFling.UI.maximize \\ --
UI["7"] = Instance.new("ImageButton", UI["2"])
UI["7"]["BorderSizePixel"] = 0
UI["7"]["AutoButtonColor"] = false
UI["7"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["7"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["7"]["Size"] = UDim2.new(0, 37, 0, 37)
UI["7"]["Name"] = [[maximize]]
UI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["7"]["Visible"] = false
UI["7"]["Position"] = UDim2.new(0.5, 0, 1, -42)

-- // StarterGui.SimpleFling.UI.maximize.UICorner \\ --
UI["8"] = Instance.new("UICorner", UI["7"])
UI["8"]["CornerRadius"] = UDim.new(1, 0)

-- // StarterGui.SimpleFling.UI.maximize.ImageLabel \\ --
UI["9"] = Instance.new("ImageLabel", UI["7"])
UI["9"]["BorderSizePixel"] = 0
UI["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["9"]["ImageColor3"] = Color3.fromRGB(172, 172, 172)
UI["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["9"]["Image"] = [[rbxassetid://7072718683]]
UI["9"]["Size"] = UDim2.new(0.5, 0, 0.5, 0)
UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["9"]["BackgroundTransparency"] = 1
UI["9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleFling.UI.upperbar \\ --
UI["a"] = Instance.new("Frame", UI["2"])
UI["a"]["BorderSizePixel"] = 0
UI["a"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 42)
UI["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["a"]["Size"] = UDim2.new(1, -30, 0, 30)
UI["a"]["Position"] = UDim2.new(0.5, 0, 0, 30)
UI["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["a"]["Name"] = [[upperbar]]
UI["a"]["BackgroundTransparency"] = 1

-- // StarterGui.SimpleFling.UI.upperbar.logo \\ --
UI["b"] = Instance.new("ImageLabel", UI["a"])
UI["b"]["BorderSizePixel"] = 0
UI["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["b"]["AnchorPoint"] = Vector2.new(0, 0.5)
UI["b"]["Image"] = [[rbxassetid://10734920149]]
UI["b"]["Size"] = UDim2.new(0, 30, 0, 30)
UI["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["b"]["BackgroundTransparency"] = 1
UI["b"]["Name"] = [[logo]]
UI["b"]["Position"] = UDim2.new(0, 0, 0.5, 0)

-- // StarterGui.SimpleFling.UI.upperbar.logo.LocalScript \\ --
UI["c"] = Instance.new("LocalScript", UI["b"])


-- // StarterGui.SimpleFling.UI.upperbar.header \\ --
UI["d"] = Instance.new("TextLabel", UI["a"])
UI["d"]["BorderSizePixel"] = 0
UI["d"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["d"]["TextSize"] = 15
UI["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
UI["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["d"]["BackgroundTransparency"] = 1
UI["d"]["Size"] = UDim2.new(0.84932, -33, 1, 0)
UI["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["d"]["Text"] = [[Advanced Fling V1]]
UI["d"]["Name"] = [[header]]
UI["d"]["Position"] = UDim2.new(0, 33, 0, 2)

-- // StarterGui.SimpleFling.UI.upperbar.minimize \\ --
UI["e"] = Instance.new("ImageButton", UI["a"])
UI["e"]["BorderSizePixel"] = 0
UI["e"]["AutoButtonColor"] = false
UI["e"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["e"]["Size"] = UDim2.new(0, 30, 0, 30)
UI["e"]["Name"] = [[minimize]]
UI["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["e"]["Position"] = UDim2.new(1, -30, 0, 0)

-- // StarterGui.SimpleFling.UI.upperbar.minimize.UICorner \\ --
UI["f"] = Instance.new("UICorner", UI["e"])
UI["f"]["CornerRadius"] = UDim.new(0, 6)

-- // StarterGui.SimpleFling.UI.upperbar.minimize.ImageLabel \\ --
UI["10"] = Instance.new("ImageLabel", UI["e"])
UI["10"]["BorderSizePixel"] = 0
UI["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["10"]["ImageColor3"] = Color3.fromRGB(172, 172, 172)
UI["10"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["10"]["Image"] = [[rbxassetid://7072719125]]
UI["10"]["Size"] = UDim2.new(0.64, 0, 0.64, 0)
UI["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["10"]["BackgroundTransparency"] = 1
UI["10"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleFling.UI.upperbar.settings \\ --
UI["11"] = Instance.new("ImageButton", UI["a"])
UI["11"]["BorderSizePixel"] = 0
UI["11"]["AutoButtonColor"] = false
UI["11"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27)
UI["11"]["Size"] = UDim2.new(0, 30, 0, 30)
UI["11"]["Name"] = [[settings]]
UI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["11"]["Position"] = UDim2.new(1, -65, 0, 0)

-- // StarterGui.SimpleFling.UI.upperbar.settings.UICorner \\ --
UI["12"] = Instance.new("UICorner", UI["11"])
UI["12"]["CornerRadius"] = UDim.new(0, 6)

-- // StarterGui.SimpleFling.UI.upperbar.settings.ImageLabel \\ --
UI["13"] = Instance.new("ImageLabel", UI["11"])
UI["13"]["BorderSizePixel"] = 0
UI["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["13"]["ImageColor3"] = Color3.fromRGB(172, 172, 172)
UI["13"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["13"]["Image"] = [[rbxassetid://18151015259]]
UI["13"]["Size"] = UDim2.new(0.64, 0, 0.64, 0)
UI["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["13"]["BackgroundTransparency"] = 1
UI["13"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleFling.UI.bar \\ --
UI["14"] = Instance.new("Frame", UI["2"])
UI["14"]["BorderSizePixel"] = 0
UI["14"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["14"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["14"]["ClipsDescendants"] = true
UI["14"]["AutomaticSize"] = Enum.AutomaticSize.Y
UI["14"]["Size"] = UDim2.new(1, -30, 0, 40)
UI["14"]["Position"] = UDim2.new(0.5, 0, 1, -50)
UI["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["14"]["Name"] = [[bar]]

-- // StarterGui.SimpleFling.UI.bar.UICorner \\ --
UI["15"] = Instance.new("UICorner", UI["14"])


-- // StarterGui.SimpleFling.UI.bar.messagebox \\ --
UI["16"] = Instance.new("TextBox", UI["14"])
UI["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["16"]["PlaceholderColor3"] = Color3.fromRGB(180, 180, 180)
UI["16"]["ZIndex"] = 2
UI["16"]["BorderSizePixel"] = 0
UI["16"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["16"]["TextSize"] = 15
UI["16"]["Name"] = [[messagebox]]
UI["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
UI["16"]["ClearTextOnFocus"] = false
UI["16"]["ClipsDescendants"] = true
UI["16"]["PlaceholderText"] = [[Player name here]]
UI["16"]["Size"] = UDim2.new(1, -82, 1, 0)
UI["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["16"]["Text"] = [[]]
UI["16"]["BackgroundTransparency"] = 1

-- // StarterGui.SimpleFling.UI.bar.messagebox.UIPadding \\ --
UI["17"] = Instance.new("UIPadding", UI["16"])
UI["17"]["PaddingTop"] = UDim.new(0, 6)
UI["17"]["PaddingLeft"] = UDim.new(0, 10)
UI["17"]["PaddingBottom"] = UDim.new(0, 6)

-- // StarterGui.SimpleFling.UI.bar.send \\ --
UI["18"] = Instance.new("ImageButton", UI["14"])
UI["18"]["BorderSizePixel"] = 0
UI["18"]["AutoButtonColor"] = false
UI["18"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["18"]["Size"] = UDim2.new(0, 40, 0, 40)
UI["18"]["Name"] = [[send]]
UI["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["18"]["Position"] = UDim2.new(1, -40, 0, 0)

-- // StarterGui.SimpleFling.UI.bar.send.UICorner \\ --
UI["19"] = Instance.new("UICorner", UI["18"])


-- // StarterGui.SimpleFling.UI.bar.send.Frame \\ --
UI["1a"] = Instance.new("Frame", UI["18"])
UI["1a"]["BorderSizePixel"] = 0
UI["1a"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["1a"]["Size"] = UDim2.new(0, 4, 1, 0)
UI["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

-- // StarterGui.SimpleFling.UI.bar.send.ImageLabel \\ --
UI["1b"] = Instance.new("ImageLabel", UI["18"])
UI["1b"]["BorderSizePixel"] = 0
UI["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1b"]["ImageColor3"] = Color3.fromRGB(132, 132, 132)
UI["1b"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["1b"]["Image"] = [[rbxassetid://10734934585]]
UI["1b"]["Size"] = UDim2.new(0, 20, 0, 20)
UI["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1b"]["BackgroundTransparency"] = 1
UI["1b"]["Position"] = UDim2.new(0.4, 0, 0.5, 0)

-- // StarterGui.SimpleFling.UI.bar.clear \\ --
UI["1c"] = Instance.new("ImageButton", UI["14"])
UI["1c"]["BorderSizePixel"] = 0
UI["1c"]["AutoButtonColor"] = false
UI["1c"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32)
UI["1c"]["Size"] = UDim2.new(0, 40, 0, 40)
UI["1c"]["Name"] = [[clear]]
UI["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1c"]["Position"] = UDim2.new(1, -80, 0, 0)

-- // StarterGui.SimpleFling.UI.bar.clear.ImageLabel \\ --
UI["1d"] = Instance.new("ImageLabel", UI["1c"])
UI["1d"]["BorderSizePixel"] = 0
UI["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1d"]["ImageColor3"] = Color3.fromRGB(132, 132, 132)
UI["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["1d"]["Image"] = [[rbxassetid://10747384394]]
UI["1d"]["Size"] = UDim2.new(0, 25, 0, 25)
UI["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1d"]["BackgroundTransparency"] = 1
UI["1d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleFling.UI.bar.TextLabel \\ --
UI["1e"] = Instance.new("TextLabel", UI["14"])
UI["1e"]["Interactable"] = false
UI["1e"]["BorderSizePixel"] = 0
UI["1e"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["1e"]["TextTransparency"] = 0.5
UI["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1e"]["TextSize"] = 15
UI["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
UI["1e"]["TextColor3"] = Color3.fromRGB(180, 180, 180)
UI["1e"]["BackgroundTransparency"] = 1
UI["1e"]["Size"] = UDim2.new(1, -82, 1, 0)
UI["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1e"]["Text"] = [[]]

-- // StarterGui.SimpleFling.UI.bar.TextLabel.UIPadding \\ --
UI["1f"] = Instance.new("UIPadding", UI["1e"])
UI["1f"]["PaddingTop"] = UDim.new(0, 6)
UI["1f"]["PaddingLeft"] = UDim.new(0, 10)
UI["1f"]["PaddingBottom"] = UDim.new(0, 6)

-- // StarterGui.SimpleFling.UI.bar.TextLabel.LocalScript \\ --
UI["20"] = Instance.new("LocalScript", UI["1e"])


-- // StarterGui.SimpleFling.UI.MainLocalScript \\ --
UI["21"] = Instance.new("LocalScript", UI["2"])
UI["21"]["Name"] = [[MainLocalScript]]

-- // StarterGui.SimpleFling.UI.settingsframe \\ --
UI["22"] = Instance.new("ScrollingFrame", UI["2"])
UI["22"]["Visible"] = false
UI["22"]["Active"] = true
UI["22"]["BorderSizePixel"] = 0
UI["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["22"]["Name"] = [[settingsframe]]
UI["22"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["22"]["Size"] = UDim2.new(0, 298, 0, 145)
UI["22"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
UI["22"]["Position"] = UDim2.new(0.5, 0, 0.38152, 0)
UI["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["22"]["BackgroundTransparency"] = 1

-- // StarterGui.SimpleFling.UI.settingsframe.UIListLayout \\ --
UI["23"] = Instance.new("UIListLayout", UI["22"])
UI["23"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
UI["23"]["Padding"] = UDim.new(0.02, 0)
UI["23"]["SortOrder"] = Enum.SortOrder.LayoutOrder

-- // StarterGui.SimpleFling.UI.settingsframe.ClearOnFling \\ --
UI["24"] = Instance.new("Frame", UI["22"])
UI["24"]["BorderSizePixel"] = 0
UI["24"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["24"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["24"]["ClipsDescendants"] = true
UI["24"]["AutomaticSize"] = Enum.AutomaticSize.Y
UI["24"]["Size"] = UDim2.new(1, -30, 0, 40)
UI["24"]["Position"] = UDim2.new(0.5, 0, 1, -50)
UI["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["24"]["Name"] = [[ClearOnFling]]

-- // StarterGui.SimpleFling.UI.settingsframe.ClearOnFling.UICorner \\ --
UI["25"] = Instance.new("UICorner", UI["24"])


-- // StarterGui.SimpleFling.UI.settingsframe.ClearOnFling.TextButton \\ --
UI["26"] = Instance.new("TextButton", UI["24"])
UI["26"]["BorderSizePixel"] = 0
UI["26"]["TextSize"] = 15
UI["26"]["TextColor3"] = Color3.fromRGB(180, 180, 180)
UI["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["26"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["26"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["26"]["BackgroundTransparency"] = 1
UI["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["26"]["Text"] = [[Toggle clear text on activation]]
UI["26"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleFling.UI.Obfuscated-MainLocalScript \\ --
UI["27"] = Instance.new("LocalScript", UI["2"])
UI["27"]["Enabled"] = false
UI["27"]["Name"] = [[Obfuscated-MainLocalScript]]
UI["27"]["Disabled"] = true

-- // StarterGui.SimpleFling.UI.logo.LocalScript \\ --
local function SCRIPT_6()
local script = UI["6"]
	local rs = game:GetService("RunService")
	
	rs.RenderStepped:Connect(function()
		script.Parent.Rotation = script.Parent.Rotation + 1
	end)
end
task.spawn(SCRIPT_6)
-- // StarterGui.SimpleFling.UI.upperbar.logo.LocalScript \\ --
local function SCRIPT_c()
local script = UI["c"]
	local rs = game:GetService("RunService")
	
	rs.RenderStepped:Connect(function()
		script.Parent.Rotation = script.Parent.Rotation + 1
	end)
end
task.spawn(SCRIPT_c)
-- // StarterGui.SimpleFling.UI.bar.TextLabel.LocalScript \\ --
local function SCRIPT_20()
local script = UI["20"]
	local box = script.Parent.Parent.messagebox
	local tlabel = script.Parent
	
	local selectedPlayer = nil
	local displayornot
	
	local Players = game:GetService("Players")
	local rs = game:GetService("RunService")
	
	-- Function to find the player
	local function findPlayer(query)
		local lowerQuery = string.lower(query)  -- Convert the query to lowercase for case-insensitive search
	
		-- First, search by username
		for _, player in ipairs(Players:GetPlayers()) do
			if string.sub(string.lower(player.Name), 1, #query) == lowerQuery then
				displayornot = false
				return player  -- Return the player if found by username
			end
		end
	
		-- If no username match, search by display name
		for _, player in ipairs(Players:GetPlayers()) do
			if string.sub(string.lower(player.DisplayName), 1, #query) == lowerQuery then
				displayornot = true
				return player  -- Return the player if found by display name
			end
		end
	
		return nil  -- No player found
	end
	
	box:GetPropertyChangedSignal("Text"):Connect(function()
		local query = box.Text
		print("box's text is " .. query)
	
		if query == "" then
			-- Handle the case where the query is empty
			tlabel.Text = ""
		else
			local player = findPlayer(query)
			if player then
				if displayornot == false then
					local text = box.Text
					local name = text .. string.sub(player.Name, #text + 1)
					tlabel.Text = name
				elseif displayornot == true then
					local text = box.Text
					local name = text .. string.sub(player.DisplayName, #text + 1)
					tlabel.Text = name
				end
				-- Update selectedPlayer when a valid player is found
				selectedPlayer = player
			else
				tlabel.Text = ""
			end
		end
	end)
	
	--[[
	box:GetPropertyChangedSignal("Text"):Connect(function()
		local query = box.Text
		print("box's text is " .. query)
		local player = findPlayer(query)
		print(player.Name)
		if player then
			if displayornot == false then
				local text = box.Text
				local name = text .. string.sub(player.Name,#text+1)
				tlabel.Text = name
			elseif displayornot == true then
				local text = box.Text
				local name = text .. string.sub(player.DisplayName,#text+1)
				tlabel.Text = name
	
			end
	
		else
			tlabel.Text = ""
		end
	end)
	--]]
end
task.spawn(SCRIPT_20)
-- // StarterGui.SimpleFling.UI.MainLocalScript \\ --
local function SCRIPT_21()
local script = UI["21"]
	if not game:IsLoaded() then
		game.Loaded:Wait()
	end
	task.wait(1)
	
	local Players = game:GetService("Players")
	local Player = Players.LocalPlayer
	
	local maximize = script.Parent.maximize
	local minimize = script.Parent.upperbar.minimize
	local settingsbutton = script.Parent.upperbar.settings
	local box = script.Parent.bar.messagebox
	local ui = script.Parent
	local minimizedlogo = script.Parent.logo
	local clearlogs = script.Parent.bar.clear
	local send = script.Parent.bar.send
	local settingsframe = script.Parent.settingsframe
	local clearonactivated = false
	local clearonactivatedbutton = script.Parent.settingsframe.ClearOnFling.TextButton
	
	local dragging
	local dragStart
	local startPos
	local dragInput
	
	local bar = script.Parent.bar
	local upperbar = script.Parent.upperbar
	
	local open = true
	
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
	
	local OldPos
	--local FPDH = workspace.FallenPartsDestroyHeight or -500
	
	local function Message(_Title, _Text, Time)
		game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
	end
	
	local function SkidFling(TargetPlayer)
		local Character = Player.Character
		local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
		local RootPart = Humanoid and Humanoid.RootPart
	
		local TCharacter = TargetPlayer.Character
		local THumanoid = TCharacter and TCharacter:FindFirstChildOfClass("Humanoid")
		local TRootPart = THumanoid and THumanoid.RootPart
		local THead = TCharacter and TCharacter:FindFirstChild("Head")
		local Accessory = TCharacter and TCharacter:FindFirstChildOfClass("Accessory")
		local Handle = Accessory and Accessory:FindFirstChild("Handle")
	
		if Character and Humanoid and RootPart then
			if RootPart.Velocity.Magnitude < 50 then
				OldPos = RootPart.CFrame
			end
			if THumanoid and THumanoid.Sit then
				return Message("Error Occurred", "Target is sitting", 5)
			end
			if THead then
				workspace.CurrentCamera.CameraSubject = THead
			elseif Handle then
				workspace.CurrentCamera.CameraSubject = Handle
			else
				workspace.CurrentCamera.CameraSubject = THumanoid
			end
			if not TCharacter:FindFirstChildWhichIsA("BasePart") then
				return
			end
	
			local function FPos(BasePart, Pos, Ang)
				RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
				Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
				RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
				RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
			end
	
			local function SFBasePart(BasePart)
				local TimeToWait = 2
				local Time = tick()
				local Angle = 0
	
				repeat
					if RootPart and THumanoid then
						if BasePart.Velocity.Magnitude < 50 then
							Angle = Angle + 100
	
							FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()
						else
							FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
							task.wait()
	
							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
							task.wait()
						end
					else
						break
					end
				until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or TargetPlayer.Character ~= TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
			end
	
			--workspace.FallenPartsDestroyHeight = 0/0
	
			local BV = Instance.new("BodyVelocity")
			BV.Name = "EpixVel"
			BV.Parent = RootPart
			BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
			BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
	
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
	
			if TRootPart and THead then
				if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
					SFBasePart(THead)
				else
					SFBasePart(TRootPart)
				end
			elseif TRootPart and not THead then
				SFBasePart(TRootPart)
			elseif not TRootPart and THead then
				SFBasePart(THead)
			elseif not TRootPart and not THead and Accessory and Handle then
				SFBasePart(Handle)
			else
				return Message("Error Occurred", "Target is missing everything", 5)
			end
	
			BV:Destroy()
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
			workspace.CurrentCamera.CameraSubject = Humanoid
	
			repeat
				RootPart.CFrame = OldPos * CFrame.new(0, .5, 0)
				Character:SetPrimaryPartCFrame(OldPos * CFrame.new(0, .5, 0))
				Humanoid:ChangeState("GettingUp")
				for i, x in pairs(Character:GetChildren()) do
					if x:IsA("BasePart") then
						x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
					end
				end
				--[[
				table.foreach(Character:GetChildren(), function(_, x)
					if x:IsA("BasePart") then
						x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
					end
				end)
				--]]
				task.wait()
			until (RootPart.Position - OldPos.p).Magnitude < 25
			--workspace.FallenPartsDestroyHeight = FPDH
		else
			return Message("Error Occurred", "Random error", 5)
		end
	end
	
	
	
	minimize.Activated:Connect(function()
		open = true
		ts:Create(ui, ti, {Size = UDim2.new(0, 56, 0, 102)}):Play()
		bar.Visible = false
		upperbar.Visible = false
		maximize.Visible = true
		minimizedlogo.Visible = true
	end)
	
	maximize.Activated:Connect(function()
		open = true
		ts:Create(ui, ti, {Size = UDim2.new(0, 322, 0, 109)}):Play()
		bar.Visible = true
		upperbar.Visible = true
		maximize.Visible = false
		minimizedlogo.Visible = false
		settingsframe.Visible = false
	end)
	
	settingsbutton.Activated:Connect(function()
		open = true
		ts:Create(ui, ti, {Size = UDim2.new(0, 322, 0, 211)}):Play()
		bar.Visible = false
		upperbar.Visible = false
		maximize.Visible = true
		minimizedlogo.Visible = false
		task.wait(0.1)
		settingsframe.Visible = true
	end)
	
	clearonactivatedbutton.Activated:Connect(function()
		if clearonactivated == false then
			clearonactivated = true
		else
			clearonactivated = false
		end
		clearonactivatedbutton.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
		ts:Create(clearonactivatedbutton, ti, {BackgroundColor3 = Color3.new(0.12549, 0.12549, 0.12549)}):Play()
	end)
	
	-- Function to find the player
	local function findPlayer(query)
		local lowerQuery = string.lower(query)  -- Convert the query to lowercase for case-insensitive search
	
		-- First, search by username
		for _, player in ipairs(Players:GetPlayers()) do
			if string.sub(string.lower(player.Name), 1, #query) == lowerQuery then
				return player  -- Return the player if found by username
			end
		end
	
		-- If no username match, search by display name
		for _, player in ipairs(Players:GetPlayers()) do
			if string.sub(string.lower(player.DisplayName), 1, #query) == lowerQuery then
				return player  -- Return the player if found by display name
			end
		end
	
		return nil  -- No player found
	end
	
	local function setup()
		local tcs = game:GetService("TextChatService")
		local chat = tcs.ChatInputBarConfiguration.TargetTextChannel
	
		-------------------------------------------------------------------------------------------------------------------------------
		box.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				local Text = box.Text
				local player = findPlayer(tostring(Text))
				if clearonactivated == true then
					box.Text = ""
				end
	
				if player then
					SkidFling(player)
				else
					Message("Error Occurred", "Invalid username", 5)
				end
			end
		end)
	
		send.MouseButton1Click:Connect(function()
			local Text = box.Text
			local player = findPlayer(tostring(Text))
			if clearonactivated == true then
				box.Text = ""
			end
			
			if player then
				SkidFling(player)
			else
				Message("Error Occurred", "Invalid username", 5)
			end
		end)
		-------------------------------------------------------------------------------------------------------------------------------
		box:GetPropertyChangedSignal("Text"):Connect(function()
			if #box.Text > 0 then
				ts:Create(send.ImageLabel, ti, {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				--bar.send.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
			elseif #box.Text > 200 or #box.Text == 0 then
				ts:Create(send.ImageLabel, ti, {ImageColor3 = Color3.fromRGB(131, 131, 131)}):Play()
				--bar.send.ImageLabel.ImageColor3 = Color3.fromRGB(131, 131, 131)
			end
		end)
		-- drag script
		local function update(input)
			local delta = input.Position - dragStart
			ui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	
		ui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = ui.Position
	
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
	
		ui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
	
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end
	
	setup()
end
task.spawn(SCRIPT_21)

return UI["1"], require;
