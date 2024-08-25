
-- // REDISTRIBUTING IS STRICTLY FORBIDDEN. MAY RESULT IN LEGAL ACTION \\ --

-- // INSTANCES: 51 | SCRIPTS: 1 | MODULES: 0 \\ --

-- // This is a continuation of SimpleBypassV2, with more settings of chat bypass options. \\ --

	--[[--------------------------------------------------------------------------------------------------]
																							                                                  			  |
	       d8888 8888888b.  888     888     d8888 888b    888  .d8888b.  8888888888 8888888b.  			      |
	      d88888 888  "Y88b 888     888    d88888 8888b   888 d88P  Y88b 888        888  "Y88b 			      |
	     d88P888 888    888 888     888   d88P888 88888b  888 888    888 888        888    888 			      |
	    d88P 888 888    888 Y88b   d88P  d88P 888 888Y88b 888 888        8888888    888    888 			      |
	   d88P  888 888    888  Y88b d88P  d88P  888 888 Y88b888 888        888        888    888 			      |
	  d88P   888 888    888   Y88o88P  d88P   888 888  Y88888 888    888 888        888    888 			      |
	 d8888888888 888  .d88P    Y888P  d8888888888 888   Y8888 Y88b  d88P 888        888  .d88P 			      |
	d88P     888 8888888P"      Y8P  d88P     888 888    Y888  "Y8888P"  8888888888 8888888P"  		    	  |
																									                                                  	  |
	888888b. Y88b   d88P 8888888b.     d8888  .d8888b.   .d8888b.       888     888  d888      		    	  |
	888  "88b Y88b d88P  888   Y88b   d88888 d88P  Y88b d88P  Y88b      888     888 d8888          			  |
	888  .88P  Y88o88P   888    888  d88P888 Y88b.      Y88b.           888     888   888          			  |
	8888888K.   Y888P    888   d88P d88P 888  "Y888b.    "Y888b.        Y88b   d88P   888          			  |
	888  "Y88b   888     8888888P" d88P  888     "Y88b.     "Y88b.       Y88b d88P    888          			  |
	888    888   888     888      d88P   888       "888       "888        Y88o88P     888      	    		  |
	888   d88P   888     888     d8888888888 Y88b  d88P Y88b  d88P         Y888P      888          			  |
	8888888P"    888     888    d88P     888  "Y8888P"   "Y8888P"           Y8P     8888888        			  |
																										                                                    |
																								                                                  		  |
																					                                                  					  |
	888888b. Y88b   d88P                                                                              	  |
	888  "88b Y88b d88P                                                                               	  |
	888  .88P  Y88o88P                                                                                	  |
	8888888K.   Y888P                                                                                 	  |
	888  "Y88b   888                                                                                  	  |
	888    888   888                                                                                  	  |
	888   d88P   888                                                                                  	  |
	8888888P"    888                                                                                  	  |
																							                                                  			  |
	 .d8888b.  888     888 8888888b.  8888888888 8888888b.  888888b.   888     888     888 8888888888 	  |
	d88P  Y88b 888     888 888   Y88b 888        888   Y88b 888  "88b  888     888     888 888        	  |
	Y88b.      888     888 888    888 888        888    888 888  .88P  888     888     888 888        	  |
	 "Y888b.   888     888 888   d88P 8888888    888   d88P 8888888K.  888     888     888 8888888    	  |
	    "Y88b. 888     888 8888888P"  888        8888888P"  888  "Y88b 888     888     888 888        	  |
	      "888 888     888 888        888        888 T88b   888    888 888     888     888 888        	  |
	Y88b  d88P Y88b. .d88P 888        888        888  T88b  888   d88P 888     Y88b. .d88P 888        	  |
	 "Y8888P"   "Y88888P"  888        8888888888 888   T88b 8888888P"  88888888 "Y88888P"  8888888888 	  |
																								                                                  		  |
	Thanks to the creators of simple bypass v2 (skire) for inspiration and definitely not for skidded UI  |
	--]]--------------------------------------------------------------------------------------------------[

local UI = {}

-- // StarterGui.SimpleBypass \\ --
UI["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
UI["1"]["Name"] = [[SimpleBypass]]

-- // StarterGui.SimpleBypass.UI \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["2"]["Size"] = UDim2.new(0, 322, 0, 109)
UI["2"]["Position"] = UDim2.new(0.1, 140, 0.493, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["Name"] = [[UI]]

-- // StarterGui.SimpleBypass.UI.UICorner \\ --
UI["3"] = Instance.new("UICorner", UI["2"])
UI["3"]["CornerRadius"] = UDim.new(0, 17)

-- // StarterGui.SimpleBypass.UI.UIStroke \\ --
UI["4"] = Instance.new("UIStroke", UI["2"])
UI["4"]["Transparency"] = 0.8
UI["4"]["Thickness"] = 4
UI["4"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.SimpleBypass.UI.logo \\ --
UI["5"] = Instance.new("ImageLabel", UI["2"])
UI["5"]["BorderSizePixel"] = 0
UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["5"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["5"]["Image"] = [[rbxassetid://10734885247]]
UI["5"]["Size"] = UDim2.new(0, 27, 0, 27)
UI["5"]["Visible"] = false
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5"]["BackgroundTransparency"] = 1
UI["5"]["Name"] = [[logo]]
UI["5"]["Position"] = UDim2.new(0.5, 0, 0, 10)

-- // StarterGui.SimpleBypass.UI.maximize \\ --
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

-- // StarterGui.SimpleBypass.UI.maximize.UICorner \\ --
UI["7"] = Instance.new("UICorner", UI["6"])
UI["7"]["CornerRadius"] = UDim.new(1, 0)

-- // StarterGui.SimpleBypass.UI.maximize.ImageLabel \\ --
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

-- // StarterGui.SimpleBypass.UI.upperbar \\ --
UI["9"] = Instance.new("Frame", UI["2"])
UI["9"]["BorderSizePixel"] = 0
UI["9"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 42)
UI["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["9"]["Size"] = UDim2.new(1, -30, 0, 30)
UI["9"]["Position"] = UDim2.new(0.5, 0, 0, 30)
UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["9"]["Name"] = [[upperbar]]
UI["9"]["BackgroundTransparency"] = 1

-- // StarterGui.SimpleBypass.UI.upperbar.logo \\ --
UI["a"] = Instance.new("ImageLabel", UI["9"])
UI["a"]["BorderSizePixel"] = 0
UI["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["a"]["AnchorPoint"] = Vector2.new(0, 0.5)
UI["a"]["Image"] = [[rbxassetid://10734885247]]
UI["a"]["Size"] = UDim2.new(0, 30, 0, 30)
UI["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["a"]["BackgroundTransparency"] = 1
UI["a"]["Name"] = [[logo]]
UI["a"]["Position"] = UDim2.new(0, 0, 0.5, 0)

-- // StarterGui.SimpleBypass.UI.upperbar.header \\ --
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
UI["b"]["Text"] = [[AdvancedBypass]]
UI["b"]["Name"] = [[header]]
UI["b"]["Position"] = UDim2.new(0, 33, 0, 2)

-- // StarterGui.SimpleBypass.UI.upperbar.minimize \\ --
UI["c"] = Instance.new("ImageButton", UI["9"])
UI["c"]["BorderSizePixel"] = 0
UI["c"]["AutoButtonColor"] = false
UI["c"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["c"]["Size"] = UDim2.new(0, 30, 0, 30)
UI["c"]["Name"] = [[minimize]]
UI["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["c"]["Position"] = UDim2.new(1, -30, 0, 0)

-- // StarterGui.SimpleBypass.UI.upperbar.minimize.UICorner \\ --
UI["d"] = Instance.new("UICorner", UI["c"])
UI["d"]["CornerRadius"] = UDim.new(0, 6)

-- // StarterGui.SimpleBypass.UI.upperbar.minimize.ImageLabel \\ --
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

-- // StarterGui.SimpleBypass.UI.upperbar.settings \\ --
UI["f"] = Instance.new("ImageButton", UI["9"])
UI["f"]["BorderSizePixel"] = 0
UI["f"]["AutoButtonColor"] = false
UI["f"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27)
UI["f"]["Size"] = UDim2.new(0, 30, 0, 30)
UI["f"]["Name"] = [[settings]]
UI["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["f"]["Position"] = UDim2.new(1, -65, 0, 0)

-- // StarterGui.SimpleBypass.UI.upperbar.settings.UICorner \\ --
UI["10"] = Instance.new("UICorner", UI["f"])
UI["10"]["CornerRadius"] = UDim.new(0, 6)

-- // StarterGui.SimpleBypass.UI.upperbar.settings.ImageLabel \\ --
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

-- // StarterGui.SimpleBypass.UI.bar \\ --
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

-- // StarterGui.SimpleBypass.UI.bar.UICorner \\ --
UI["13"] = Instance.new("UICorner", UI["12"])


-- // StarterGui.SimpleBypass.UI.bar.messagebox \\ --
UI["14"] = Instance.new("TextBox", UI["12"])
UI["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["14"]["PlaceholderColor3"] = Color3.fromRGB(180, 180, 180)
UI["14"]["BorderSizePixel"] = 0
UI["14"]["TextXAlignment"] = Enum.TextXAlignment.Left
UI["14"]["TextSize"] = 15
UI["14"]["Name"] = [[messagebox]]
UI["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
UI["14"]["ClearTextOnFocus"] = false
UI["14"]["ClipsDescendants"] = true
UI["14"]["PlaceholderText"] = [[Message here]]
UI["14"]["Size"] = UDim2.new(1, -82, 1, 0)
UI["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["14"]["Text"] = [[]]
UI["14"]["BackgroundTransparency"] = 1

-- // StarterGui.SimpleBypass.UI.bar.messagebox.UIPadding \\ --
UI["15"] = Instance.new("UIPadding", UI["14"])
UI["15"]["PaddingTop"] = UDim.new(0, 6)
UI["15"]["PaddingLeft"] = UDim.new(0, 10)
UI["15"]["PaddingBottom"] = UDim.new(0, 6)

-- // StarterGui.SimpleBypass.UI.bar.send \\ --
UI["16"] = Instance.new("ImageButton", UI["12"])
UI["16"]["BorderSizePixel"] = 0
UI["16"]["AutoButtonColor"] = false
UI["16"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["16"]["Size"] = UDim2.new(0, 40, 0, 40)
UI["16"]["Name"] = [[send]]
UI["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["16"]["Position"] = UDim2.new(1, -40, 0, 0)

-- // StarterGui.SimpleBypass.UI.bar.send.UICorner \\ --
UI["17"] = Instance.new("UICorner", UI["16"])


-- // StarterGui.SimpleBypass.UI.bar.send.Frame \\ --
UI["18"] = Instance.new("Frame", UI["16"])
UI["18"]["BorderSizePixel"] = 0
UI["18"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["18"]["Size"] = UDim2.new(0, 4, 1, 0)
UI["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

-- // StarterGui.SimpleBypass.UI.bar.send.ImageLabel \\ --
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

-- // StarterGui.SimpleBypass.UI.bar.clear \\ --
UI["1a"] = Instance.new("ImageButton", UI["12"])
UI["1a"]["BorderSizePixel"] = 0
UI["1a"]["AutoButtonColor"] = false
UI["1a"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32)
UI["1a"]["Size"] = UDim2.new(0, 40, 0, 40)
UI["1a"]["Name"] = [[clear]]
UI["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1a"]["Position"] = UDim2.new(1, -80, 0, 0)

-- // StarterGui.SimpleBypass.UI.bar.clear.ImageLabel \\ --
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

-- // StarterGui.SimpleBypass.UI.MainLocalScript \\ --
UI["1c"] = Instance.new("LocalScript", UI["2"])
UI["1c"]["Name"] = [[MainLocalScript]]

-- // StarterGui.SimpleBypass.UI.settingsframe \\ --
UI["1d"] = Instance.new("ScrollingFrame", UI["2"])
UI["1d"]["Visible"] = false
UI["1d"]["Active"] = true
UI["1d"]["BorderSizePixel"] = 0
UI["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1d"]["Name"] = [[settingsframe]]
UI["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["1d"]["Size"] = UDim2.new(0, 298, 0, 145)
UI["1d"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
UI["1d"]["Position"] = UDim2.new(0.5, 0, 0.38152, 0)
UI["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1d"]["BackgroundTransparency"] = 1

-- // StarterGui.SimpleBypass.UI.settingsframe.UIListLayout \\ --
UI["1e"] = Instance.new("UIListLayout", UI["1d"])
UI["1e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
UI["1e"]["Padding"] = UDim.new(0.02, 0)
UI["1e"]["SortOrder"] = Enum.SortOrder.LayoutOrder

-- // StarterGui.SimpleBypass.UI.settingsframe.Cubebutton \\ --
UI["1f"] = Instance.new("Frame", UI["1d"])
UI["1f"]["BorderSizePixel"] = 0
UI["1f"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["1f"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["1f"]["ClipsDescendants"] = true
UI["1f"]["AutomaticSize"] = Enum.AutomaticSize.Y
UI["1f"]["Size"] = UDim2.new(1, -30, 0, 40)
UI["1f"]["Position"] = UDim2.new(0.5, 0, 1, -50)
UI["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1f"]["Name"] = [[Cubebutton]]

-- // StarterGui.SimpleBypass.UI.settingsframe.Cubebutton.UICorner \\ --
UI["20"] = Instance.new("UICorner", UI["1f"])


-- // StarterGui.SimpleBypass.UI.settingsframe.Cubebutton.TextButton \\ --
UI["21"] = Instance.new("TextButton", UI["1f"])
UI["21"]["BorderSizePixel"] = 0
UI["21"]["TextSize"] = 15
UI["21"]["TextColor3"] = Color3.fromRGB(180, 180, 180)
UI["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["21"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["21"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["21"]["BackgroundTransparency"] = 1
UI["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["21"]["Text"] = [[🅲🆄🅱🅴 🅱🆈🅿🅰🆂🆂]]
UI["21"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleBypass.UI.settingsframe.Simplebutton \\ --
UI["22"] = Instance.new("Frame", UI["1d"])
UI["22"]["BorderSizePixel"] = 0
UI["22"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["22"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["22"]["ClipsDescendants"] = true
UI["22"]["AutomaticSize"] = Enum.AutomaticSize.Y
UI["22"]["Size"] = UDim2.new(1, -30, 0, 40)
UI["22"]["Position"] = UDim2.new(0.5, 0, 1, -50)
UI["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["22"]["Name"] = [[Simplebutton]]

-- // StarterGui.SimpleBypass.UI.settingsframe.Simplebutton.UICorner \\ --
UI["23"] = Instance.new("UICorner", UI["22"])


-- // StarterGui.SimpleBypass.UI.settingsframe.Simplebutton.TextButton \\ --
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
UI["24"]["Text"] = [[şIΜΡLΕ bΥΡΑṠṠ]]
UI["24"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleBypass.UI.settingsframe.Circlebutton \\ --
UI["25"] = Instance.new("Frame", UI["1d"])
UI["25"]["BorderSizePixel"] = 0
UI["25"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["25"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["25"]["ClipsDescendants"] = true
UI["25"]["AutomaticSize"] = Enum.AutomaticSize.Y
UI["25"]["Size"] = UDim2.new(1, -30, 0, 40)
UI["25"]["Position"] = UDim2.new(0.5, 0, 1, -50)
UI["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["25"]["Name"] = [[Circlebutton]]

-- // StarterGui.SimpleBypass.UI.settingsframe.Circlebutton.UICorner \\ --
UI["26"] = Instance.new("UICorner", UI["25"])


-- // StarterGui.SimpleBypass.UI.settingsframe.Circlebutton.TextButton \\ --
UI["27"] = Instance.new("TextButton", UI["25"])
UI["27"]["BorderSizePixel"] = 0
UI["27"]["TextSize"] = 15
UI["27"]["TextColor3"] = Color3.fromRGB(180, 180, 180)
UI["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["27"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["27"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["27"]["BackgroundTransparency"] = 1
UI["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["27"]["Text"] = [[🅒🅘🅡🅒🅛🅔 🅑🅨🅟🅐🅢🅢]]
UI["27"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleBypass.UI.settingsframe.Positivecubebutton \\ --
UI["28"] = Instance.new("Frame", UI["1d"])
UI["28"]["BorderSizePixel"] = 0
UI["28"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["28"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["28"]["ClipsDescendants"] = true
UI["28"]["AutomaticSize"] = Enum.AutomaticSize.Y
UI["28"]["Size"] = UDim2.new(1, -30, 0, 40)
UI["28"]["Position"] = UDim2.new(0.5, 0, 1, -50)
UI["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["28"]["Name"] = [[Positivecubebutton]]

-- // StarterGui.SimpleBypass.UI.settingsframe.Positivecubebutton.UICorner \\ --
UI["29"] = Instance.new("UICorner", UI["28"])


-- // StarterGui.SimpleBypass.UI.settingsframe.Positivecubebutton.TextButton \\ --
UI["2a"] = Instance.new("TextButton", UI["28"])
UI["2a"]["BorderSizePixel"] = 0
UI["2a"]["TextSize"] = 15
UI["2a"]["TextColor3"] = Color3.fromRGB(180, 180, 180)
UI["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["2a"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["2a"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["2a"]["BackgroundTransparency"] = 1
UI["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2a"]["Text"] = [[🄿🄾🅂🄸🅃🄸🅅🄴 🄲🅄🄱🄴 🄱🅈🄿🄰🅂🅂]]
UI["2a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleBypass.UI.settingsframe.Parenthesizedbypass \\ --
UI["2b"] = Instance.new("Frame", UI["1d"])
UI["2b"]["BorderSizePixel"] = 0
UI["2b"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["2b"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["2b"]["ClipsDescendants"] = true
UI["2b"]["AutomaticSize"] = Enum.AutomaticSize.Y
UI["2b"]["Size"] = UDim2.new(1, -30, 0, 40)
UI["2b"]["Position"] = UDim2.new(0.5, 0, 1, -50)
UI["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2b"]["Name"] = [[Parenthesizedbypass]]

-- // StarterGui.SimpleBypass.UI.settingsframe.Parenthesizedbypass.UICorner \\ --
UI["2c"] = Instance.new("UICorner", UI["2b"])


-- // StarterGui.SimpleBypass.UI.settingsframe.Parenthesizedbypass.TextButton \\ --
UI["2d"] = Instance.new("TextButton", UI["2b"])
UI["2d"]["BorderSizePixel"] = 0
UI["2d"]["TextSize"] = 15
UI["2d"]["TextColor3"] = Color3.fromRGB(180, 180, 180)
UI["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["2d"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["2d"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["2d"]["BackgroundTransparency"] = 1
UI["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2d"]["Text"] = [[🄟🄐🄡🄔🄝🄣🄗🄔🄪🄘🄩🄔🄓 🄑🄨🄟🄐🄪🄪]]
UI["2d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleBypass.UI.settingsframe.Numberbutton \\ --
UI["2e"] = Instance.new("Frame", UI["1d"])
UI["2e"]["BorderSizePixel"] = 0
UI["2e"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["2e"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["2e"]["ClipsDescendants"] = true
UI["2e"]["AutomaticSize"] = Enum.AutomaticSize.Y
UI["2e"]["Size"] = UDim2.new(1, -30, 0, 40)
UI["2e"]["Position"] = UDim2.new(0.5, 0, 1, -50)
UI["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2e"]["Name"] = [[Numberbutton]]

-- // StarterGui.SimpleBypass.UI.settingsframe.Numberbutton.UICorner \\ --
UI["2f"] = Instance.new("UICorner", UI["2e"])


-- // StarterGui.SimpleBypass.UI.settingsframe.Numberbutton.TextButton \\ --
UI["30"] = Instance.new("TextButton", UI["2e"])
UI["30"]["BorderSizePixel"] = 0
UI["30"]["TextSize"] = 15
UI["30"]["TextColor3"] = Color3.fromRGB(180, 180, 180)
UI["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["30"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["30"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["30"]["BackgroundTransparency"] = 1
UI["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["30"]["Text"] = [[Number bypass 🄂🄃🄄🄅]]
UI["30"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleBypass.UI.settingsframe.Rochipsbutton \\ --
UI["31"] = Instance.new("Frame", UI["1d"])
UI["31"]["BorderSizePixel"] = 0
UI["31"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33)
UI["31"]["AnchorPoint"] = Vector2.new(0.5, 0)
UI["31"]["ClipsDescendants"] = true
UI["31"]["AutomaticSize"] = Enum.AutomaticSize.Y
UI["31"]["Size"] = UDim2.new(1, -30, 0, 40)
UI["31"]["Position"] = UDim2.new(0.5, 0, 1, -50)
UI["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["31"]["Name"] = [[Rochipsbutton]]

-- // StarterGui.SimpleBypass.UI.settingsframe.Rochipsbutton.UICorner \\ --
UI["32"] = Instance.new("UICorner", UI["31"])


-- // StarterGui.SimpleBypass.UI.settingsframe.Rochipsbutton.TextButton \\ --
UI["33"] = Instance.new("TextButton", UI["31"])
UI["33"]["BorderSizePixel"] = 0
UI["33"]["TextSize"] = 15
UI["33"]["TextColor3"] = Color3.fromRGB(180, 180, 180)
UI["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["33"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
UI["33"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["33"]["BackgroundTransparency"] = 1
UI["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["33"]["Text"] = [[Rochip Panel's Chat Bypass <<e>>]]
UI["33"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

-- // StarterGui.SimpleBypass.UI.MainLocalScript \\ --
local function SCRIPT_1c()
local script = UI["1c"]
	if not game:IsLoaded() then
		game.Loaded:Wait()
	end
	task.wait(1)
	
	local maximize = script.Parent.maximize
	local minimize = script.Parent.upperbar.minimize
	local settingsbutton = script.Parent.upperbar.settings
	local box = script.Parent.bar.messagebox
	local ui = script.Parent
	local minimizedlogo = script.Parent.logo
	local clearlogs = script.Parent.bar.clear
	local send = script.Parent.bar.send
	local cubebutton = script.Parent.settingsframe.Cubebutton
	local simplebutton = script.Parent.settingsframe.Simplebutton
	local circlebutton = script.Parent.settingsframe.Circlebutton
	local parenthesizedbutton = script.Parent.settingsframe.Parenthesizedbypass
	local positivecubebutton = script.Parent.settingsframe.Positivecubebutton
	local settingsframe = script.Parent.settingsframe
	local numberbutton = script.Parent.settingsframe.Numberbutton
	local rochipbutton = script.Parent.settingsframe.Rochipsbutton
	
	local bar = script.Parent.bar
	local upperbar = script.Parent.upperbar
	local mode = "cube"
	
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
	
	cubebutton.TextButton.Activated:Connect(function()
		mode = "cube"
		print("mode set to " .. tostring(mode))
		cubebutton.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
		ts:Create(cubebutton, ti, {BackgroundColor3 = Color3.new(0.12549, 0.12549, 0.12549)}):Play()
	end)
	
	simplebutton.TextButton.Activated:Connect(function()
		mode = "simple"
		print("mode set to " .. tostring(mode))
		simplebutton.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
		ts:Create(simplebutton, ti, {BackgroundColor3 = Color3.new(0.12549, 0.12549, 0.12549)}):Play()
	end)
	
	circlebutton.TextButton.Activated:Connect(function()
		mode = "circle"
		print("mode set to " .. tostring(mode))
		circlebutton.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
		ts:Create(circlebutton, ti, {BackgroundColor3 = Color3.new(0.12549, 0.12549, 0.12549)}):Play()
	end)
	
	parenthesizedbutton.TextButton.Activated:Connect(function()
		mode = "parenthesized"
		print("mode set to " .. tostring(mode))
		parenthesizedbutton.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
		ts:Create(parenthesizedbutton, ti, {BackgroundColor3 = Color3.new(0.12549, 0.12549, 0.12549)}):Play()
	end)
	
	positivecubebutton.TextButton.Activated:Connect(function()
		mode = "positivecube"
		print("mode set to " .. tostring(mode))
		positivecubebutton.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
		ts:Create(positivecubebutton, ti, {BackgroundColor3 = Color3.new(0.12549, 0.12549, 0.12549)}):Play()
	end)
	
	numberbutton.TextButton.Activated:Connect(function()
		mode = "number"
		print("mode set to " .. tostring(mode))
		numberbutton.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
		ts:Create(numberbutton, ti, {BackgroundColor3 = Color3.new(0.12549, 0.12549, 0.12549)}):Play()
	end)
	
	rochipbutton.TextButton.Activated:Connect(function()
		mode = "rochip"
		print("mode set to " .. tostring(mode))
		rochipbutton.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
		ts:Create(rochipbutton, ti, {BackgroundColor3 = Color3.new(0.12549, 0.12549, 0.12549)}):Play()
	end)
	
	local function setup()
		local tcs = game:GetService("TextChatService")
		local chat = tcs.ChatInputBarConfiguration.TargetTextChannel
	
		local function replace(str, find_str, replace_str)
			local escaped_find_str = find_str:gsub("[%-%^%$%(%)%%%.%[%]%*%+%-%?]", "%%%0")
			return str:gsub(escaped_find_str, replace_str)
		end
		
		local letters = {}
	
		local function filter(message)
			for search, replacement in pairs(letters) do
				message = replace(message, search, replacement)
			end
			return message
		end
	
		local function clearlogsf()
			local amount = 19
			while amount <= 1 do
				game:GetService("TextChatService").ChatInputBarConfiguration.TargetTextChannel:SendAsync("")
				amount = (amount - 1)
			end
			amount = 19
		end
	
		clearlogs.MouseButton1Click:Connect(function()
			clearlogsf()
		end)
	
		box:GetPropertyChangedSignal("Text"):Connect(function()
			if #box.Text > 0 then
				ts:Create(send.ImageLabel, ti, {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				--bar.send.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
			elseif #box.Text > 200 or #box.Text == 0 then
				ts:Create(send.ImageLabel, ti, {ImageColor3 = Color3.fromRGB(131, 131, 131)}):Play()
				--bar.send.ImageLabel.ImageColor3 = Color3.fromRGB(131, 131, 131)
			end
		end)
		local function setmode()
			if mode == "cube" then
				letters = {
					["a"] = "🅰",
					["b"] = "🅱",
					["c"] = "🅲",
					["d"] = "🅳",
					["e"] = "🅴",
					["f"] = "🅵",
					["g"] = "🅶",
					["h"] = "🅷",
					["i"] = "🅸",
					["j"] = "🅹",
					["k"] = "🅺",
					["l"] = "🅻",
					["m"] = "🅼",
					["n"] = "🅽",
					["o"] = "🅾",
					["p"] = "🅿",
					["q"] = "🆀",
					["r"] = "🆁",
					["s"] = "🆂",
					["t"] = "🆃",
					["u"] = "🆄",
					["v"] = "🆅",
					["w"] = "🆆",
					["x"] = "🆇",
					["y"] = "🆈",
					["z"] = "🆉",
					["A"] = "🅰",
					["B"] = "🅱",
					["C"] = "🅲",
					["D"] = "🅳",
					["E"] = "🅴",
					["F"] = "🅵",
					["G"] = "🅶",
					["H"] = "🅷",
					["I"] = "🅸",
					["J"] = "🅹",
					["K"] = "🅺",
					["L"] = "🅻",
					["M"] = "🅼",
					["N"] = "🅽",
					["O"] = "🅾",
					["P"] = "🅿",
					["Q"] = "🆀",
					["R"] = "🆁",
					["S"] = "🆂",
					["T"] = "🆃",
					["U"] = "🆄",
					["V"] = "🆅",
					["W"] = "🆆",
					["X"] = "🆇",
					["Y"] = "🆈",
					["Z"] = "🆉"
				}
			elseif mode == "simple" then
				letters = {
					["a"] = "Α", ["A"] = "α",
					["b"] = "Β", ["B"] = "b",
					["c"] = "С", ["C"] = "с",
					["d"] = "D",-- ["D"] = "ԁ",
					["e"] = "Ε", ["E"] = "ȩ",
					["f"] = "Ғ", ["F"] = "Ғ",
					["g"] = "ԍ", ["G"] = "ԍ",
					["h"] = "Η", ["H"] = "һ",
					["i"] = "I",-- ["I"] = "i",
					["j"] = "Ј", ["J"] = "ј",
					["k"] = "Κ", ["K"] = "κ",
					["l"] = "L",-- ["L"] = "L",
					["m"] = "Μ", ["M"] = "м",
					["n"] = "Ν", ["N"] = "n",
					["o"] = "Ο", ["O"] = "ο",
					["p"] = "Ρ", ["P"] = "р",
					["q"] = "Ԛ",-- ["Q"] = "ԛ",
					["r"] = "R",-- ["R"] = "r",
					["s"] = "Ṡ", ["S"] = "ş",
					["t"] = "Τ", ["T"] = "t",
					["u"] = "ᴜ", ["U"] = "u",
					["v"] = "Ѵ", ["V"] = "ѵ",
					["w"] = "Ԝ", ["W"] = "ԝ",
					["x"] = "Χ", ["X"] = "x",
					["y"] = "Υ", ["Y"] = "y",
					["z"] = "Ζ", ["Z"] = "ᴢ"
				}	
			elseif mode == "circle" then
				letters = {
					["a"] = "🅐", ["A"] = "🅐",
					["b"] = "🅑", ["B"] = "🅑",
					["c"] = "🅒", ["C"] = "🅒",
					["d"] = "🅓", ["D"] = "🅓",
					["e"] = "🅔", ["E"] = "🅔",
					["f"] = "🅕", ["F"] = "🅕",
					["g"] = "🅖", ["G"] = "🅖",
					["h"] = "🅗", ["H"] = "🅗",
					["i"] = "🅘", ["I"] = "🅘",
					["j"] = "🅙", ["J"] = "🅙",
					["k"] = "🅚", ["K"] = "🅚",
					["l"] = "🅛", ["L"] = "🅛",
					["m"] = "🅜", ["M"] = "🅜",
					["n"] = "🅝", ["N"] = "🅝",
					["o"] = "🅞", ["O"] = "🅞",
					["p"] = "🅟", ["P"] = "🅟",
					["q"] = "🅠", ["Q"] = "🅠",
					["r"] = "🅡", ["R"] = "🅡",
					["s"] = "🅢", ["S"] = "🅢",
					["t"] = "🅣", ["T"] = "🅣",
					["u"] = "🅤", ["U"] = "🅤",
					["v"] = "🅥", ["V"] = "🅥",
					["w"] = "🅦", ["W"] = "🅦",
					["x"] = "🅧", ["X"] = "🅧",
					["y"] = "🅨", ["Y"] = "🅨",
					["z"] = "🅩", ["Z"] = "🅩"
				}	
			elseif mode == "parenthesized" then
				letters = {
					["a"] = "🄐", ["A"] = "🄐",
					["b"] = "🄑", ["B"] = "🄑",
					["c"] = "🄒", ["C"] = "🄒",
					["d"] = "🄓", ["D"] = "🄓",
					["e"] = "🄔", ["E"] = "🄔",
					["f"] = "🄕", ["F"] = "🄕",
					["g"] = "🄖", ["G"] = "🄖",
					["h"] = "🄗", ["H"] = "🄗",
					["i"] = "🄘", ["I"] = "🄘",
					["j"] = "🄙", ["J"] = "🄙",
					["k"] = "🄚", ["K"] = "🄚",
					["l"] = "🄛", ["L"] = "🄛",
					["m"] = "🄜", ["M"] = "🄜",
					["n"] = "🄝", ["N"] = "🄝",
					["o"] = "🄞", ["O"] = "🄞",
					["p"] = "🄟", ["P"] = "🄟",
					["q"] = "🄠", ["Q"] = "🄠",
					["r"] = "🄡", ["R"] = "🄡",
					["s"] = "🄪", ["S"] = "🄪",
					["t"] = "🄣", ["T"] = "🄣",
					["u"] = "🄤", ["U"] = "🄤",
					["v"] = "🄥", ["V"] = "🄥",
					["w"] = "🄦", ["W"] = "🄦",
					["x"] = "🄧", ["X"] = "🄧",
					["y"] = "🄨", ["Y"] = "🄨",
					["z"] = "🄩", ["Z"] = "🄩"
				}	
			elseif mode == "positivecube" then
				letters = {
					["a"] = "🄰", ["A"] = "🄰",
					["b"] = "🄱", ["B"] = "🄱",
					["c"] = "🄲", ["C"] = "🄲",
					["d"] = "🄳", ["D"] = "🄳",
					["e"] = "🄴", ["E"] = "🄴",
					["f"] = "🄵", ["F"] = "🄵",
					["g"] = "🄶", ["G"] = "🄶",
					["h"] = "🄷", ["H"] = "🄷",
					["i"] = "🄸", ["I"] = "🄸",
					["j"] = "🄹", ["J"] = "🄹",
					["k"] = "🄺", ["K"] = "🄺",
					["l"] = "🄻", ["L"] = "🄻",
					["m"] = "🄼", ["M"] = "🄼",
					["n"] = "🄽", ["N"] = "🄽",
					["o"] = "🄾", ["O"] = "🄾",
					["p"] = "🄿", ["P"] = "🄿",
					["q"] = "🅀", ["Q"] = "🅀",
					["r"] = "🅁", ["R"] = "🅁",
					["s"] = "🅂", ["S"] = "🅂",
					["t"] = "🅃", ["T"] = "🅃",
					["u"] = "🅄", ["U"] = "🅄",
					["v"] = "🅅", ["V"] = "🅅",
					["w"] = "🅆", ["W"] = "🅆",
					["x"] = "🅇", ["X"] = "🅇",
					["y"] = "🅈", ["Y"] = "🅈",
					["z"] = "🅉", ["Z"] = "🅉"
				}	
			elseif mode == "number" then
				letters = {
					["1"] = "🄂", ["2"] = "🄃",
					["3"] = "🄄", ["4"] = "🄅",
					["5"] = "🄆", ["6"] = "🄇",
					["7"] = "🄈", ["8"] = "🄉",
					["9"] = "🄊", ["0"] = "🄀"
				}
			elseif mode == "rochip" then
				letters = {
					["a"] = "<<a>>", ["A"] = "<<A>>",
					["b"] = "<<b>>", ["B"] = "<<B>>",
					["c"] = "<<c>>", ["C"] = "<<C>>",
					["d"] = "<<d>>", ["D"] = "<<D>>",
					["e"] = "<<e>>", ["E"] = "<<E>>",
					["f"] = "<<f>>", ["F"] = "<<F>>",
					["g"] = "<<g>>", ["G"] = "<<G>>",
					["h"] = "<<h>>", ["H"] = "<<H>>",
					["i"] = "<<i>>", ["I"] = "<<I>>",
					["j"] = "<<j>>", ["J"] = "<<J>>",
					["k"] = "<<k>>", ["K"] = "<<K>>",
					["l"] = "<<l>>", ["L"] = "<<L>>",
					["m"] = "<<m>>", ["M"] = "<<M>>",
					["n"] = "<<n>>", ["N"] = "<<N>>",
					["o"] = "<<o>>", ["O"] = "<<O>>",
					["p"] = "<<p>>", ["P"] = "<<P>>",
					["q"] = "<<q>>", ["Q"] = "<<Q>>",
					["r"] = "<<r>>", ["R"] = "<<R>>",
					["s"] = "<<s>>", ["S"] = "<<S>>",
					["t"] = "<<t>>", ["T"] = "<<T>>",
					["u"] = "<<u>>", ["U"] = "<<U>>",
					["v"] = "<<v>>", ["V"] = "<<V>>",
					["w"] = "<<w>>", ["W"] = "<<W>>",
					["x"] = "<<x>>", ["X"] = "<<X>>",
					["y"] = "<<y>>", ["Y"] = "<<Y>>",
					["z"] = "<<z>>", ["Z"] = "<<Z>>",
					["1"] = "<<1>>", ["2"] = "<<2>>",
					["3"] = "<<3>>", ["4"] = "<<4>>",
					["5"] = "<<5>>", ["6"] = "<<6>>",
					["7"] = "<<7>>", ["8"] = "<<8>>",
					["9"] = "<<9>>", ["0"] = "<<0>>"
				}
			end
			--🄰 🄱 🄲 🄳 🄴 🄵 🄶 🄷 🄸 🄹 🄺 🄻 🄼 🄽 🄾 🄿 🅀 🅁 🅂 🅃 🅄 🅅 🅆 🅇 🅇 🅈 🅉
			--	🄀 🄁 🄂 🄃 🄄 🄅 🄆 🄇 🄈 🄉 🄊 🄋 🄌
			--	🄐 🄑 🄒 🄓 🄔 🄕 🄖 🄗 🄘 🄙 🄚 🄛 🄜 🄝 🄞 🄟 🄠 🄡 🄢 🄣 🄤 🄥 🄦 🄧 🄨 🄩 🄪 🄫 🄬
			--	🆝 -- it will turn into roblox logo :O I think
			warn(tostring(mode))
			pcall(function()
				print(tostring(letters.A))
			end)
		end
		local function sendchat(msg)
			if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
				game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg,"All")
			else
				game:GetService("TextChatService").ChatInputBarConfiguration.TargetTextChannel:SendAsync(msg)
			end
			warn(tostring(msg))
		end
		box.FocusLost:Connect(function(enterPressed)
			if enterPressed then
				setmode()
				sendchat(filter(box.Text))
				box.Text = ""
			end
		end)
	
		send.MouseButton1Click:Connect(function()
			setmode()
			sendchat(filter(box.Text))
			box.Text = ""
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
task.spawn(SCRIPT_1c)

return UI["1"], require;
