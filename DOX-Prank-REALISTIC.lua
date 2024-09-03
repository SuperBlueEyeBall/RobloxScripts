-- // REDISTRIBUTING IS STRICTLY FORBIDDEN. MAY RESULT IN LEGAL ACTION \\ --

-- // This is a SUPER realistic fake doxxer. Try it out, trust me its awesome!! I made it myself btw and definitly didnt use the UI from simplebypass as a template because it looks awesome and I dont give a poopy if anyone cares \\ --
--// Also try not to use the chat for atleast 15 seconds before using the doxx mechanic so it doesnt say "please wait before sending another message" in chat. \\ --

-- // INSTANCES: 37 | SCRIPTS: 3 | MODULES: 0 \\ --

local UI = {}

-- // StarterGui.SimpleDox \\ --
UI["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
UI["1"]["Name"] = [[SimpleDox]]

-- // StarterGui.SimpleDox.UI \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["2"]["Size"] = UDim2.new(0, 322, 0, 109)
UI["2"]["Position"] = UDim2.new(0.1, 140, 0.493, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["Name"] = [[UI]]

-- // StarterGui.SimpleDox.UI.UICorner \\ --
UI["3"] = Instance.new("UICorner", UI["2"])
UI["3"]["CornerRadius"] = UDim.new(0, 17)

-- // StarterGui.SimpleDox.UI.UIStroke \\ --
UI["4"] = Instance.new("UIStroke", UI["2"])
UI["4"]["Transparency"] = 0.8
UI["4"]["Thickness"] = 4
UI["4"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.SimpleDox.UI.logo \\ --
UI["5"] = Instance.new("ImageLabel", UI["2"])
UI["5"]["BorderSizePixel"] = 0
UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["5"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["5"]["Image"] = [[rbxassetid://10734885803]]
UI["5"]["Size"] = UDim2.new(0, 27, 0, 27)
UI["5"]["Visible"] = false
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["BackgroundTransparency"] = 1
UI["5"]["Name"] = [[logo]]
UI["5"]["Position"] = UDim2.new(0.5, 0, 0, 10)

-- // StarterGui.SimpleDox.UI.maximize \\ --
UI["6"] = Instance.new("ImageButton", UI["2"])
UI["6"]["BorderSizePixel"] = 0
UI["6"]["AutoButtonColor"] = false
UI["6"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["6"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["6"]["Size"] = UDim2.new(0, 37, 0, 37)
UI["6"]["Name"] = [[maximize]]
UI["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["6"]["Visible"] = false
UI["6"]["Position"] = UDim2.new(0.5, 0, 1, -42)

-- // StarterGui.SimpleDox.UI.maximize.UICorner \\ --
UI["7"] = Instance.new("UICorner", UI["6"])
UI["7"]["CornerRadius"] = UDim.new(1, 0)

-- // StarterGui.SimpleDox.UI.maximize.ImageLabel \\ --
UI["8"] = Instance.new("ImageLabel", UI["6"])
UI["8"]["BorderSizePixel"] = 0
UI["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["8"]["ImageColor3"] = Color3.fromRGB(172, 172, 172)
UI["8"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["8"]["Image"] = [[rbxassetid://7072718683]]
UI["8"]["Size"] = UDim2.new(0.5, 0, 0.5, 0)
UI["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["8"]["BackgroundTransparency"] = 1
UI["8"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleDox.UI.upperbar \\ --
UI["9"] = Instance.new("Frame", UI["2"])
UI["9"]["BorderSizePixel"] = 0
UI["9"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 42)
UI["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["9"]["Size"] = UDim2.new(1, -30, 0, 30)
UI["9"]["Position"] = UDim2.new(0.5, 0, 0, 30)
UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["9"]["Name"] = [[upperbar]]
UI["9"]["BackgroundTransparency"] = 1

-- // StarterGui.SimpleDox.UI.upperbar.logo \\ --
UI["a"] = Instance.new("ImageLabel", UI["9"])
UI["a"]["BorderSizePixel"] = 0
UI["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["a"]["AnchorPoint"] = Vector2.new(0, 0.5)
UI["a"]["Image"] = [[rbxassetid://10734885803]]
UI["a"]["Size"] = UDim2.new(0, 30, 0, 30)
UI["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["a"]["BackgroundTransparency"] = 1
UI["a"]["Name"] = [[logo]]
UI["a"]["Position"] = UDim2.new(0, 0, 0.5, 0)

-- // StarterGui.SimpleDox.UI.upperbar.header \\ --
UI["b"] = Instance.new("TextLabel", UI["9"])
UI["b"]["BorderSizePixel"] = 0
UI["b"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["b"]["TextSize"] = 15
UI["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
UI["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["b"]["BackgroundTransparency"] = 1
UI["b"]["Size"] = UDim2.new(0.84932, -33, 1, 0)
UI["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["b"]["Text"] = [[Doxxinator V1 (Prank dox)]]
UI["b"]["Name"] = [[header]]
UI["b"]["Position"] = UDim2.new(0, 33, 0, 2)

-- // StarterGui.SimpleDox.UI.upperbar.minimize \\ --
UI["c"] = Instance.new("ImageButton", UI["9"])
UI["c"]["BorderSizePixel"] = 0
UI["c"]["AutoButtonColor"] = false
UI["c"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["c"]["Size"] = UDim2.new(0, 30, 0, 30)
UI["c"]["Name"] = [[minimize]]
UI["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["c"]["Position"] = UDim2.new(1, -30, 0, 0)

-- // StarterGui.SimpleDox.UI.upperbar.minimize.UICorner \\ --
UI["d"] = Instance.new("UICorner", UI["c"])
UI["d"]["CornerRadius"] = UDim.new(0, 6)

-- // StarterGui.SimpleDox.UI.upperbar.minimize.ImageLabel \\ --
UI["e"] = Instance.new("ImageLabel", UI["c"])
UI["e"]["BorderSizePixel"] = 0
UI["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["e"]["ImageColor3"] = Color3.fromRGB(172, 172, 172)
UI["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["e"]["Image"] = [[rbxassetid://7072719125]]
UI["e"]["Size"] = UDim2.new(0.64, 0, 0.64, 0)
UI["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["e"]["BackgroundTransparency"] = 1
UI["e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleDox.UI.upperbar.settings \\ --
UI["f"] = Instance.new("ImageButton", UI["9"])
UI["f"]["BorderSizePixel"] = 0
UI["f"]["AutoButtonColor"] = false
UI["f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27)
UI["f"]["Size"] = UDim2.new(0, 30, 0, 30)
UI["f"]["Name"] = [[settings]]
UI["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["f"]["Position"] = UDim2.new(1, -65, 0, 0)

-- // StarterGui.SimpleDox.UI.upperbar.settings.UICorner \\ --
UI["10"] = Instance.new("UICorner", UI["f"])
UI["10"]["CornerRadius"] = UDim.new(0, 6)

-- // StarterGui.SimpleDox.UI.upperbar.settings.ImageLabel \\ --
UI["11"] = Instance.new("ImageLabel", UI["f"])
UI["11"]["BorderSizePixel"] = 0
UI["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["11"]["ImageColor3"] = Color3.fromRGB(172, 172, 172)
UI["11"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["11"]["Image"] = [[rbxassetid://18151015259]]
UI["11"]["Size"] = UDim2.new(0.64, 0, 0.64, 0)
UI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["11"]["BackgroundTransparency"] = 1
UI["11"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleDox.UI.bar \\ --
UI["12"] = Instance.new("Frame", UI["2"])
UI["12"]["BorderSizePixel"] = 0
UI["12"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["12"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["12"]["ClipsDescendants"] = true
UI["12"]["AutomaticSize"] = Enum.AutomaticSize.Y
UI["12"]["Size"] = UDim2.new(1, -30, 0, 40)
UI["12"]["Position"] = UDim2.new(0.5, 0, 1, -50)
UI["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["12"]["Name"] = [[bar]]

-- // StarterGui.SimpleDox.UI.bar.UICorner \\ --
UI["13"] = Instance.new("UICorner", UI["12"])


-- // StarterGui.SimpleDox.UI.bar.messagebox \\ --
UI["14"] = Instance.new("TextBox", UI["12"])
UI["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["14"]["PlaceholderColor3"] = Color3.fromRGB(180, 180, 180)
UI["14"]["ZIndex"] = 2
UI["14"]["BorderSizePixel"] = 0
UI["14"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["14"]["TextSize"] = 15
UI["14"]["Name"] = [[messagebox]]
UI["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
UI["14"]["ClearTextOnFocus"] = false
UI["14"]["ClipsDescendants"] = true
UI["14"]["PlaceholderText"] = [[Player name here]]
UI["14"]["Size"] = UDim2.new(1, -82, 1, 0)
UI["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["14"]["Text"] = [[]]
UI["14"]["BackgroundTransparency"] = 1

-- // StarterGui.SimpleDox.UI.bar.messagebox.UIPadding \\ --
UI["15"] = Instance.new("UIPadding", UI["14"])
UI["15"]["PaddingTop"] = UDim.new(0, 6)
UI["15"]["PaddingLeft"] = UDim.new(0, 10)
UI["15"]["PaddingBottom"] = UDim.new(0, 6)

-- // StarterGui.SimpleDox.UI.bar.send \\ --
UI["16"] = Instance.new("ImageButton", UI["12"])
UI["16"]["BorderSizePixel"] = 0
UI["16"]["AutoButtonColor"] = false
UI["16"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["16"]["Size"] = UDim2.new(0, 40, 0, 40)
UI["16"]["Name"] = [[send]]
UI["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["16"]["Position"] = UDim2.new(1, -40, 0, 0)

-- // StarterGui.SimpleDox.UI.bar.send.UICorner \\ --
UI["17"] = Instance.new("UICorner", UI["16"])


-- // StarterGui.SimpleDox.UI.bar.send.Frame \\ --
UI["18"] = Instance.new("Frame", UI["16"])
UI["18"]["BorderSizePixel"] = 0
UI["18"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["18"]["Size"] = UDim2.new(0, 4, 1, 0)
UI["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

-- // StarterGui.SimpleDox.UI.bar.send.ImageLabel \\ --
UI["19"] = Instance.new("ImageLabel", UI["16"])
UI["19"]["BorderSizePixel"] = 0
UI["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["19"]["ImageColor3"] = Color3.fromRGB(132, 132, 132)
UI["19"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["19"]["Image"] = [[rbxassetid://10734943902]]
UI["19"]["Size"] = UDim2.new(0, 20, 0, 20)
UI["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["19"]["BackgroundTransparency"] = 1
UI["19"]["Rotation"] = 45
UI["19"]["Position"] = UDim2.new(0.4, 0, 0.5, 0)

-- // StarterGui.SimpleDox.UI.bar.clear \\ --
UI["1a"] = Instance.new("ImageButton", UI["12"])
UI["1a"]["BorderSizePixel"] = 0
UI["1a"]["AutoButtonColor"] = false
UI["1a"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32)
UI["1a"]["Size"] = UDim2.new(0, 40, 0, 40)
UI["1a"]["Name"] = [[clear]]
UI["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1a"]["Position"] = UDim2.new(1, -80, 0, 0)

-- // StarterGui.SimpleDox.UI.bar.clear.ImageLabel \\ --
UI["1b"] = Instance.new("ImageLabel", UI["1a"])
UI["1b"]["BorderSizePixel"] = 0
UI["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1b"]["ImageColor3"] = Color3.fromRGB(132, 132, 132)
UI["1b"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["1b"]["Image"] = [[rbxassetid://10747384394]]
UI["1b"]["Size"] = UDim2.new(0, 25, 0, 25)
UI["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1b"]["BackgroundTransparency"] = 1
UI["1b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleDox.UI.bar.TextLabel \\ --
UI["1c"] = Instance.new("TextLabel", UI["12"])
UI["1c"]["Interactable"] = false
UI["1c"]["BorderSizePixel"] = 0
UI["1c"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["1c"]["TextTransparency"] = 0.5
UI["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1c"]["TextSize"] = 15
UI["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
UI["1c"]["TextColor3"] = Color3.fromRGB(180, 180, 180)
UI["1c"]["BackgroundTransparency"] = 1
UI["1c"]["Size"] = UDim2.new(1, -82, 1, 0)
UI["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1c"]["Text"] = [[]]

-- // StarterGui.SimpleDox.UI.bar.TextLabel.UIPadding \\ --
UI["1d"] = Instance.new("UIPadding", UI["1c"])
UI["1d"]["PaddingTop"] = UDim.new(0, 6)
UI["1d"]["PaddingLeft"] = UDim.new(0, 10)
UI["1d"]["PaddingBottom"] = UDim.new(0, 6)

-- // StarterGui.SimpleDox.UI.bar.TextLabel.LocalScript \\ --
UI["1e"] = Instance.new("LocalScript", UI["1c"])


-- // StarterGui.SimpleDox.UI.MainLocalScript \\ --
UI["1f"] = Instance.new("LocalScript", UI["2"])
UI["1f"]["Name"] = [[MainLocalScript]]

-- // StarterGui.SimpleDox.UI.settingsframe \\ --
UI["20"] = Instance.new("ScrollingFrame", UI["2"])
UI["20"]["Visible"] = false
UI["20"]["Active"] = true
UI["20"]["BorderSizePixel"] = 0
UI["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["20"]["Name"] = [[settingsframe]]
UI["20"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["20"]["Size"] = UDim2.new(0, 298, 0, 145)
UI["20"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
UI["20"]["Position"] = UDim2.new(0.5, 0, 0.38152, 0)
UI["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["20"]["BackgroundTransparency"] = 1

-- // StarterGui.SimpleDox.UI.settingsframe.UIListLayout \\ --
UI["21"] = Instance.new("UIListLayout", UI["20"])
UI["21"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
UI["21"]["Padding"] = UDim.new(0.02, 0)
UI["21"]["SortOrder"] = Enum.SortOrder.LayoutOrder

-- // StarterGui.SimpleDox.UI.settingsframe.TemplateButton \\ --
UI["22"] = Instance.new("Frame", UI["20"])
UI["22"]["BorderSizePixel"] = 0
UI["22"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["22"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["22"]["ClipsDescendants"] = true
UI["22"]["AutomaticSize"] = Enum.AutomaticSize.Y
UI["22"]["Size"] = UDim2.new(1, -30, 0, 40)
UI["22"]["Position"] = UDim2.new(0.5, 0, 1, -50)
UI["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["22"]["Name"] = [[TemplateButton]]

-- // StarterGui.SimpleDox.UI.settingsframe.TemplateButton.UICorner \\ --
UI["23"] = Instance.new("UICorner", UI["22"])


-- // StarterGui.SimpleDox.UI.settingsframe.TemplateButton.TextButton \\ --
UI["24"] = Instance.new("TextButton", UI["22"])
UI["24"]["BorderSizePixel"] = 0
UI["24"]["TextSize"] = 15
UI["24"]["TextColor3"] = Color3.fromRGB(180, 180, 180)
UI["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["24"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["24"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["24"]["BackgroundTransparency"] = 1
UI["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["24"]["Text"] = [[No settings to set YET!]]
UI["24"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleDox.UI.Obfuscated-MainLocalScript \\ --
UI["25"] = Instance.new("LocalScript", UI["2"])
UI["25"]["Enabled"] = false
UI["25"]["Name"] = [[Obfuscated-MainLocalScript]]
UI["25"]["Disabled"] = true

-- // StarterGui.SimpleDox.UI.bar.TextLabel.LocalScript \\ --
local function SCRIPT_1e()
local script = UI["1e"]
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
task.spawn(SCRIPT_1e)
-- // StarterGui.SimpleDox.UI.MainLocalScript \\ --
local function SCRIPT_1f()
local script = UI["1f"]
	--[[----------------------------------------------------------------------------------------------------------------------------------------]
																										  										|
	8888888b.   .d88888b. Y88b   d88P Y88b   d88P 8888888 888b    888        d8888 88888888888 .d88888b.  8888888b.                       		|
	888  "Y88b d88P" "Y88b Y88b d88P   Y88b d88P    888   8888b   888       d88888     888    d88P" "Y88b 888   Y88b                      		|
	888    888 888     888  Y88o88P     Y88o88P     888   88888b  888      d88P888     888    888     888 888    888                      		|
	888    888 888     888   Y888P       Y888P      888   888Y88b 888     d88P 888     888    888     888 888   d88P                      		|
	888    888 888     888   d888b       d888b      888   888 Y88b888    d88P  888     888    888     888 8888888P"                       		|
	888    888 888     888  d88888b     d88888b     888   888  Y88888   d88P   888     888    888     888 888 T88b                        		|
	888  .d88P Y88b. .d88P d88P Y88b   d88P Y88b    888   888   Y8888  d8888888888     888    Y88b. .d88P 888  T88b                       		|
	8888888P"   "Y88888P" d88P   Y88b d88P   Y88b 8888888 888    Y888 d88P     888     888     "Y88888P"  888   T88b                      		|
	                                                                                                                                      		|
	                                                                                                                                      		|
	                                                                                                                                      		|
	888     888  d888         .d88 8888888b.   .d88888b. Y88b   d88P     8888888b.  8888888b.         d8888 888b    888 888    d8P  88b.  		|
	888     888 d8888        d88P" 888  "Y88b d88P" "Y88b Y88b d88P      888   Y88b 888   Y88b       d88888 8888b   888 888   d8P   "Y88b 		|
	888     888   888       d88P   888    888 888     888  Y88o88P       888    888 888    888      d88P888 88888b  888 888  d8P      Y88b		|
	Y88b   d88P   888       888    888    888 888     888   Y888P        888   d88P 888   d88P     d88P 888 888Y88b 888 888d88K        888		|
	 Y88b d88P    888       888    888    888 888     888   d888b        8888888P"  8888888P"     d88P  888 888 Y88b888 8888888b       888		|
	  Y88o88P     888       Y88b   888    888 888     888  d88888b       888        888 T88b     d88P   888 888  Y88888 888  Y88b     d88P		|
	   Y888P      888        Y88b. 888  .d88P Y88b. .d88P d88P Y88b      888        888  T88b   d8888888888 888   Y8888 888   Y88b  .d88P 		|
	    Y8P     8888888       "Y88 8888888P"   "Y88888P" d88P   Y88b     888        888   T88b d88P     888 888    Y888 888    Y88b 88P"  		|
																																				|
																										  										|
																																				|
																																				|
	888888b. Y88b   d88P                                                                             										 	|
	888  "88b Y88b d88P                                                                              										 	|
	888  .88P  Y88o88P                                                                                											|
	8888888K.   Y888P                                                                                 											|
	888  "Y88b   888                                                                                  											|
	888    888   888                                                                                  											|
	888   d88P   888                                                                                  											|
	8888888P"    888                                                                                  											|
																																				|
	 .d8888b.  888     888 8888888b.  8888888888 8888888b.  888888b.   888     888     888 8888888888 	  										|
	d88P  Y88b 888     888 888   Y88b 888        888   Y88b 888  "88b  888     888     888 888        	  										|
	Y88b.      888     888 888    888 888        888    888 888  .88P  888     888     888 888        	 										|
	 "Y888b.   888     888 888   d88P 8888888    888   d88P 8888888K.  888     888     888 8888888    	 										|
	    "Y88b. 888     888 8888888P"  888        8888888P"  888  "Y88b 888     888     888 888        	 										|
	      "888 888     888 888        888        888 T88b   888    888 888     888     888 888        	 										|
	Y88b  d88P Y88b. .d88P 888        888        888  T88b  888   d88P 888     Y88b. .d88P 888        	  										|
	 "Y8888P"   "Y88888P"  888        8888888888 888   T88b 8888888P"  88888888 "Y88888P"  8888888888 	  										|
																										  										|
	Thanks to the creators of simple bypass v2 (skire) for uhhhh existing and definitely not for skidded UI		  								|
	--]]----------------------------------------------------------------------------------------------------------------------------------------[
	
	if not game:IsLoaded() then
		game.Loaded:Wait()
	end
	task.wait(1)
	
	local Players = game:GetService("Players")
	
	local maximize = script.Parent.maximize
	local minimize = script.Parent.upperbar.minimize
	local settingsbutton = script.Parent.upperbar.settings
	local box = script.Parent.bar.messagebox
	local ui = script.Parent
	local minimizedlogo = script.Parent.logo
	local clearlogs = script.Parent.bar.clear
	local send = script.Parent.bar.send
	local settingsframe = script.Parent.settingsframe
	
	
	local dragging
	local dragStart
	local startPos
	local dragInput
	
	local bar = script.Parent.bar
	local upperbar = script.Parent.upperbar
	
	local open = true
	
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
	
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
	
	local HttpService = game:GetService("HttpService")
	local tcs = game:GetService("TextChatService")
	
	local function randomUnicodeChar()
	
		local allUTF8characters = true
		local UTF8rangeVersion = "v5" --[[ Options are below vvv			--]
															alphabet   		-- Only alphabet characters
															v1         		-- Every single ASCII character
															v2		   		-- Narrowed down a lil more than the last one to display more readable characters
															v3+		   		-- Narrowed down a lil more than the last one to display more readable characters
															v4		   		-- Narrowed down a lil more than the last one to display more readable characters
															v5		   		-- 99% Perfect/ Only readable characters
															chinese    		-- Its in the name; it (mostly) only shows chinese lookin characters
															unsupportedonly -- Also in the name; only shows mostly unreadable characters that look like a "?" with a 45 degree box around it
										   Anything not on the list Eg. v69 -- RBLX-;{"STOPCODE": "NULL", "ERRMESSAGE\": "CANT DECRYPT; CUSTOM BYTECODE VERSION"}		
									  --[                                   --]]
	
		if allUTF8characters == "alphabet" then
			local randomCodePoint = math.random(32, 126) -- Generate a random number between two Unicode ranges
			return utf8.char(randomCodePoint)
		else
			if UTF8rangeVersion == "v1" then -- This means if its v1
				local randomCodePoint = math.random(128, 65535) -- Generate a random UTF-8 character from a huge library
				return utf8.char(randomCodePoint)
			elseif UTF8rangeVersion == "v2" then
				local codePoint
				repeat
					codePoint = math.random(128, 65535)
				until not (
					(codePoint >= 0x3400 and codePoint <= 0x4DBF) or -- CJK Unified Ideographs Extension A
						(codePoint >= 0x4E00 and codePoint <= 0x9FFF) or -- CJK Unified Ideographs
						(codePoint >= 0x20000 and codePoint <= 0x2A6DF) or -- CJK Unified Ideographs Extension B
						(codePoint >= 0x2A700 and codePoint <= 0x2B73F) or -- CJK Unified Ideographs Extension C
						(codePoint >= 0x2B740 and codePoint <= 0x2B81F) or -- CJK Unified Ideographs Extension D
						(codePoint >= 0x2B820 and codePoint <= 0x2CEAF) or -- CJK Unified Ideographs Extensions E-G
						(codePoint >= 0xF900 and codePoint <= 0xFAFF)    -- CJK Compatibility Ideographs
				)
				return utf8.char(codePoint)
			elseif UTF8rangeVersion == "v3+" then
				local codePoint
				repeat
					codePoint = math.random(128, 65535)
				until not (
					-- Exclude CJK Unified Ideographs and Extensions
					(codePoint >= 0x3400 and codePoint <= 0x4DBF) or 
						(codePoint >= 0x4E00 and codePoint <= 0x9FFF) or 
						(codePoint >= 0x20000 and codePoint <= 0x2A6DF) or 
						(codePoint >= 0x2A700 and codePoint <= 0x2B73F) or 
						(codePoint >= 0x2B740 and codePoint <= 0x2B81F) or 
						(codePoint >= 0x2B820 and codePoint <= 0x2CEAF) or 
						(codePoint >= 0xF900 and codePoint <= 0xFAFF) or 
	
						-- Exclude CJK Compatibility Ideographs
						--(codePoint >= 0xF900 and codePoint <= 0xFAFF) or 
						(codePoint >= 0x2F800 and codePoint <= 0x2FA1F) or 
	
						-- Exclude CJK Symbols and Punctuation
						(codePoint >= 0x3000 and codePoint <= 0x303F) or 
	
						-- Exclude Hiragana and Katakana
						(codePoint >= 0x3040 and codePoint <= 0x309F) or 
						(codePoint >= 0x30A0 and codePoint <= 0x30FF) or 
						(codePoint >= 0x31F0 and codePoint <= 0x31FF) or 
	
						-- Exclude Hangul (Korean) Syllables
						(codePoint >= 0xAC00 and codePoint <= 0xD7AF) or 
						(codePoint >= 0x1100 and codePoint <= 0x11FF) or 
	
						-- Exclude CJK Radicals, Symbols, and Strokes
						(codePoint >= 0x2E80 and codePoint <= 0x2EFF) or 
						(codePoint >= 0x2F00 and codePoint <= 0x2FDF) or 
						(codePoint >= 0x31C0 and codePoint <= 0x31EF) or 
	
						-- Exclude Enclosed CJK Letters and Months
						(codePoint >= 0x3200 and codePoint <= 0x32FF) or 
	
						-- Exclude CJK Compatibility
						(codePoint >= 0x3300 and codePoint <= 0x33FF) or 
	
						-- Exclude Halfwidth and Fullwidth Forms
						(codePoint >= 0xFF00 and codePoint <= 0xFFEF) or 
	
						-- Exclude additional blocks that may contain East Asian characters
						(codePoint >= 0x4DC0 and codePoint <= 0x4DFF) or -- Yijing Hexagram Symbols
						(codePoint >= 0xA000 and codePoint <= 0xA48F) or -- Yi Syllables
						(codePoint >= 0xA490 and codePoint <= 0xA4CF) or -- Yi Radicals
						(codePoint >= 0xA960 and codePoint <= 0xA97F) or -- Hangul Jamo Extended-A
						(codePoint >= 0xD7B0 and codePoint <= 0xD7FF) or -- Hangul Jamo Extended-B
						(codePoint >= 0xFE30 and codePoint <= 0xFE4F)    -- CJK Compatibility Forms
				)
				return utf8.char(codePoint)
			elseif UTF8rangeVersion == "v4" then
				local codePoint
				repeat
					codePoint = math.random(128, 65535)
				until not (
					-- Exclude CJK Unified Ideographs and Extensions
					(codePoint >= 0x3400 and codePoint <= 0x4DBF) or 
						(codePoint >= 0x4E00 and codePoint <= 0x9FFF) or 
						(codePoint >= 0x20000 and codePoint <= 0x2A6DF) or 
						(codePoint >= 0x2A700 and codePoint <= 0x2B73F) or 
						(codePoint >= 0x2B740 and codePoint <= 0x2B81F) or 
						(codePoint >= 0x2B820 and codePoint <= 0x2CEAF) or 
						(codePoint >= 0xF900 and codePoint <= 0xFAFF) or 
	
						-- Exclude CJK Compatibility Ideographs
						(codePoint >= 0x2F800 and codePoint <= 0x2FA1F) or 
	
						-- Exclude CJK Symbols and Punctuation
						(codePoint >= 0x3000 and codePoint <= 0x303F) or 
	
						-- Exclude Hiragana and Katakana
						(codePoint >= 0x3040 and codePoint <= 0x309F) or 
						(codePoint >= 0x30A0 and codePoint <= 0x30FF) or 
						(codePoint >= 0x31F0 and codePoint <= 0x31FF) or 
	
						-- Exclude Hangul (Korean) Syllables
						(codePoint >= 0xAC00 and codePoint <= 0xD7AF) or 
						(codePoint >= 0x1100 and codePoint <= 0x11FF) or 
	
						-- Exclude CJK Radicals, Symbols, and Strokes
						(codePoint >= 0x2E80 and codePoint <= 0x2EFF) or 
						(codePoint >= 0x2F00 and codePoint <= 0x2FDF) or 
						(codePoint >= 0x31C0 and codePoint <= 0x31EF) or 
	
						-- Exclude Enclosed CJK Letters and Months
						(codePoint >= 0x3200 and codePoint <= 0x32FF) or 
	
						-- Exclude CJK Compatibility
						(codePoint >= 0x3300 and codePoint <= 0x33FF) or 
	
						-- Exclude Halfwidth and Fullwidth Forms
						(codePoint >= 0xFF00 and codePoint <= 0xFFEF) or 
	
						-- Exclude additional blocks that may contain East Asian characters
						(codePoint >= 0x4DC0 and codePoint <= 0x4DFF) or -- Yijing Hexagram Symbols
						(codePoint >= 0xA000 and codePoint <= 0xA48F) or -- Yi Syllables
						(codePoint >= 0xA490 and codePoint <= 0xA4CF) or -- Yi Radicals
						(codePoint >= 0xA960 and codePoint <= 0xA97F) or -- Hangul Jamo Extended-A
						(codePoint >= 0xD7B0 and codePoint <= 0xD7FF) or -- Hangul Jamo Extended-B
						(codePoint >= 0xFE30 and codePoint <= 0xFE4F)    -- CJK Compatibility Forms
				)
				return utf8.char(codePoint)
			elseif UTF8rangeVersion == "v5" then
				local codePoint
				repeat
					codePoint = math.random(1, 6)
					if codePoint == 1 then
						codePoint = math.random(32, 126)  -- Basic Latin (printable characters)
					elseif codePoint == 2 then
						codePoint = math.random(161, 255)  -- Latin-1 Supplement (common symbols)
					elseif codePoint == 3 then
						codePoint = math.random(1024, 1279)  -- Cyrillic (common alphabet)
					elseif codePoint == 4 then
						codePoint = math.random(8192, 8303)  -- General Punctuation
					elseif codePoint == 5 then
						codePoint = math.random(9312, 9471)  -- Enclosed Alphanumerics
					elseif codePoint == 6 then
						codePoint = math.random(9472, 9599)  -- Box Drawing
					end
				until codePoint and codePoint >= 32 and codePoint <= 65535
				return utf8.char(codePoint)
			elseif UTF8rangeVersion == "chinese" then
				local codePoint
				repeat
					codePoint = math.random(1, 4)
					if codePoint == 1 then
						codePoint = math.random(0x4E00, 0x9FFF)  -- CJK Unified Ideographs (Chinese characters)
					elseif codePoint == 2 then
						codePoint = math.random(0x3400, 0x4DBF)  -- CJK Unified Ideographs Extension A
					elseif codePoint == 3 then
						codePoint = math.random(0x20000, 0x2A6DF)  -- CJK Unified Ideographs Extension B
					elseif codePoint == 4 then
						codePoint = math.random(0x2A700, 0x2B73F)  -- CJK Unified Ideographs Extension C
					end
				until codePoint and codePoint >= 0x3400 and codePoint <= 0x2B73F
				return utf8.char(codePoint)
			elseif UTF8rangeVersion == "unsupportedonly" then
				local codePoint
				repeat
					codePoint = math.random(1, 3)
					if codePoint == 1 then
						codePoint = math.random(0xDC00, 0xDFFF)  -- Low Surrogates (often render as question marks)
					elseif codePoint == 2 then
						codePoint = math.random(0xFFF0, 0xFFFF)  -- Specials (often non-printable or rendering issues)
					elseif codePoint == 3 then
						codePoint = math.random(0xD800, 0xDBFF)  -- High Surrogates (often render as question marks)
					end
				until codePoint and codePoint >= 0xD800 and codePoint <= 0xFFFF
				return utf8.char(codePoint)
			else
				return ";{\"STOPCODE\": \"NULL\", \"ERRMESSAGE\": \"CANT DECRYPT; CUSTOM BYTECODE VERSION\"}"
			end
		end
	end
	
	-- Function to generate a string in the format with random Unicode characters
	local function generateRandomUnicodeString()
		local baseString = "RBLX-"
		for i = 1, 30 do
			baseString = baseString .. randomUnicodeChar()
		end
		--v.value = baseString
		return baseString
	end
	
	local function getdoxinfo(player)
		local doxinfo = {}
	
		-- Inserting labels
		table.insert(doxinfo, {name = "IPv4 Address", value = ""})
		table.insert(doxinfo, {name = "IPv6 Address", value = ""})
		table.insert(doxinfo, {name = "Host name", value = ""})
		table.insert(doxinfo, {name = "Latitude", value = ""})
		table.insert(doxinfo, {name = "Longitude", value = ""})
		table.insert(doxinfo, {name = "Postal Code", value = ""})
		table.insert(doxinfo, {name = "Timezone", value = ""})
		table.insert(doxinfo, {name = "ISP", value = ""})
		table.insert(doxinfo, {name = "User-Agent", value = ""})
	
		-- Filling in random or fake data
		for i, v in pairs(doxinfo) do
	
			if v.name == "IPv4 Address" then
				v.value = math.random(0, 255) .. "." .. math.random(0, 255) .. "." .. math.random(0, 255) .. "." .. math.random(0, 255)
	
			elseif v.name == "IPv6 Address" then
				v.value = string.format("%x:%x:%x:%x:%x:%x:%x:%x", math.random(0, 65535), math.random(0, 65535), math.random(0, 65535), math.random(0, 65535), math.random(0, 65535), math.random(0, 65535), math.random(0, 65535), math.random(0, 65535))
	
			elseif v.name == "Host name" then
				v.value = "example-hostname" .. math.random(1, 1000) .. ".com"
	
			elseif v.name == "Latitude" then
				v.value = tostring(math.random(-90, 90)) .. "." .. tostring(math.random(0, 999999))
	
			elseif v.name == "Longitude" then
				v.value = tostring(math.random(-180, 180)) .. "." .. tostring(math.random(0, 999999))
	
			elseif v.name == "Postal Code" then
				v.value = tostring(math.random(10000, 99999))
	
			elseif v.name == "Timezone" then
				v.value = "UTC" .. (math.random(-12, 12) >= 0 and "+" or "") .. tostring(math.random(-12, 12))
	
			elseif v.name == "ISP" then
				-- Function to generate a random Unicode character
				local resultUnicode = generateRandomUnicodeString()
				v.value = resultUnicode
	
			elseif v.name == "User-Agent" then
				v.value = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/" .. tostring(math.random(500, 599)) .. ".0 (KHTML, like Gecko) Chrome/" .. tostring(math.random(80, 99)) .. ".0 Safari/" .. tostring(math.random(500, 599)) .. ".0"
	
			end
		end
		return doxinfo
	end
	
	local function waitForTextChannel()
		local textChatService = game:GetService("TextChatService")
		local chatInputConfig = textChatService.ChatInputBarConfiguration
	
		-- Wait until a valid TargetTextChannel is set
		while not chatInputConfig.TargetTextChannel do
			-- Check for a specific channel, or just wait until any channel is available
			local generalChannel = textChatService.TextChannels:FindFirstChild("General") -- Replace "General" with your desired channel name
			if generalChannel then
				chatInputConfig.TargetTextChannel = generalChannel
				break
			end
			wait(0.1)  -- Wait briefly before checking again
		end
	
		return chatInputConfig.TargetTextChannel
	end
	
	local function sendchat(msg)
		if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
			local chatEvents = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
			if chatEvents then
				chatEvents.SayMessageRequest:FireServer(msg, "All")
			else
				warn("ChatEvents not found!")
			end
		else
			local targetChannel = waitForTextChannel()
			if targetChannel then
				targetChannel:SendAsync(msg)
			else
				warn("Failed to set TargetTextChannel!")
			end
		end
	end
	
	-- Print the names and values
	local doxinfo = getdoxinfo()  -- Call the function to get the dox info 
	
	-- Variable to store the found player
	local selectedPlayer = nil
	
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
				box.Text = ""
				local doxinfo = getdoxinfo(findPlayer(tostring(Text)))
				sendchat("D0Xv13 function intercept() | line 14513; Intercepting server tracking from " .. tostring(player.Name))
				task.wait(2)
				sendchat("Decrypting packets; " .. tostring(math.random(130400140, 506004000)) .. " packets left.")
				task.wait(2)
				sendchat("Finished decrypting packets.")
				task.wait(1)
				sendchat("Initializing...")
				task.wait(3)
				for i, v in pairs(doxinfo) do
					local message = v.name .. " : " .. v.value
					sendchat(message)
					task.wait(0.5)
				end
			end
		end)
	
		send.MouseButton1Click:Connect(function()
			local Text = box.Text
			local player = findPlayer(tostring(Text))
			box.Text = ""
			local doxinfo = getdoxinfo(findPlayer(tostring(Text)))
			sendchat("D0Xv13 function intercept() | line 14513; Intercepting server tracking from " .. tostring(player.Name))
			task.wait(2)
			sendchat("Decrypting packets; " .. tostring(math.random(130400140, 506004000)) .. " packets left.")
			task.wait(2)
			sendchat("Finished decrypting packets.")
			task.wait(1)
			sendchat("Initializing...")
			task.wait(3)
			for i, v in pairs(doxinfo) do
				local message = v.name .. " : " .. v.value
				sendchat(message)
				task.wait(0.5)
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
task.spawn(SCRIPT_1f)

return UI["1"], require;
