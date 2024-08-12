--[[


loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperBlueEyeBall/RobloxScripts/main/Projects/FakeLag.lua"))()

--]]

-- // REDISTRIBUTING IS STRICTLY FORBIDDEN. MAY RESULT IN LEGAL ACTION // -- 

-- // INSTANCES: 103 | SCRIPTS: 15 | MODULES: 0 \\ --

local UI = {}

-- // StarterGui.Freecam \\ --
UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
UI["1"]["Name"] = [[Freecam]]
UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

-- // StarterGui.Freecam.Frame \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["2"]["Size"] = UDim2.new(0.23541, 0, 0.58688, 0)
UI["2"]["Position"] = UDim2.new(0.65178, 0, 0.07869, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

-- // StarterGui.Freecam.Frame.UIAspectRatioConstraint \\ --
UI["3"] = Instance.new("UIAspectRatioConstraint", UI["2"])
UI["3"]["AspectRatio"] = 0.77

-- // StarterGui.Freecam.Frame.ToggleLagOnOrOffTextButton \\ --
UI["4"] = Instance.new("TextButton", UI["2"])
UI["4"]["TextWrapped"] = true
UI["4"]["BorderSizePixel"] = 0
UI["4"]["TextSize"] = 14
UI["4"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["4"]["TextScaled"] = true
UI["4"]["BackgroundColor3"] = Color3.fromRGB(87, 0, 0)
UI["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["4"]["Size"] = UDim2.new(0.76662, 0, 0.12838, 0)
UI["4"]["Name"] = [[ToggleLagOnOrOffTextButton]]
UI["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["Text"] = [[Toggle Fake Lag]]
UI["4"]["Position"] = UDim2.new(0.11104, 0, 0.2227, 0)

-- // StarterGui.Freecam.Frame.ToggleLagOnOrOffTextButton.UICorner \\ --
UI["5"] = Instance.new("UICorner", UI["4"])


-- // StarterGui.Freecam.Frame.ToggleLagOnOrOffTextButton.UIStroke1 \\ --
UI["6"] = Instance.new("UIStroke", UI["4"])
UI["6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["6"]["Name"] = [[UIStroke1]]
UI["6"]["Thickness"] = 3
UI["6"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Freecam.Frame.ToggleLagOnOrOffTextButton.UIStroke2 \\ --
UI["7"] = Instance.new("UIStroke", UI["4"])
UI["7"]["Name"] = [[UIStroke2]]
UI["7"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Freecam.Frame.ToggleLagOnOrOffTextButton.AspectRatio \\ --
UI["8"] = Instance.new("UIAspectRatioConstraint", UI["4"])
UI["8"]["AspectRatio"] = 5.36
UI["8"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.TextLabel \\ --
UI["9"] = Instance.new("TextLabel", UI["2"])
UI["9"]["TextWrapped"] = true
UI["9"]["BorderSizePixel"] = 0
UI["9"]["TextScaled"] = true
UI["9"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["9"]["TextSize"] = 14
UI["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["9"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["9"]["Size"] = UDim2.new(0.70141, 0, 0.12542, 0)
UI["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["9"]["Text"] = [[SuperBlueEyeBall's Fake Lag Script]]
UI["9"]["Position"] = UDim2.new(0.015, 0, 0.01, 0)

-- // StarterGui.Freecam.Frame.TextLabel.UICorner \\ --
UI["a"] = Instance.new("UICorner", UI["9"])


-- // StarterGui.Freecam.Frame.TextLabel.AspectRatio \\ --
UI["b"] = Instance.new("UIAspectRatioConstraint", UI["9"])
UI["b"]["AspectRatio"] = 3.83
UI["b"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.TextLabel.UIStroke \\ --
UI["c"] = Instance.new("UIStroke", UI["9"])
UI["c"]["Thickness"] = 1.5
UI["c"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.TextLabel.UIStroke.UIGradient \\ --
UI["d"] = Instance.new("UIGradient", UI["c"])
UI["d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 163, 233)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 163, 233))}

-- // StarterGui.Freecam.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
UI["e"] = Instance.new("LocalScript", UI["d"])


-- // StarterGui.Freecam.Frame.TextLabel.UIStroke \\ --
UI["f"] = Instance.new("UIStroke", UI["9"])
UI["f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["f"]["Thickness"] = 3
UI["f"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.TextLabel.UIStroke.UIGradient \\ --
UI["10"] = Instance.new("UIGradient", UI["f"])
UI["10"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 163, 233)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 163, 233))}

-- // StarterGui.Freecam.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
UI["11"] = Instance.new("LocalScript", UI["10"])


-- // StarterGui.Freecam.Frame.MainLocalScript \\ --
UI["12"] = Instance.new("LocalScript", UI["2"])
UI["12"]["Name"] = [[MainLocalScript]]

-- // StarterGui.Freecam.Frame.DragLocalScript \\ --
UI["13"] = Instance.new("LocalScript", UI["2"])
UI["13"]["Name"] = [[DragLocalScript]]

-- // StarterGui.Freecam.Frame.ToggleLagStutterTextButton \\ --
UI["14"] = Instance.new("TextButton", UI["2"])
UI["14"]["TextWrapped"] = true
UI["14"]["BorderSizePixel"] = 0
UI["14"]["TextSize"] = 14
UI["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["14"]["TextScaled"] = true
UI["14"]["BackgroundColor3"] = Color3.fromRGB(0, 87, 0)
UI["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["14"]["Size"] = UDim2.new(0.47, 0, 0.135, 0)
UI["14"]["Name"] = [[ToggleLagStutterTextButton]]
UI["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["14"]["Text"] = [[Toggle Lag Stutter (disables lag fall if off)]]
UI["14"]["Position"] = UDim2.new(0.26261, 0, 0.44384, 0)

-- // StarterGui.Freecam.Frame.ToggleLagStutterTextButton.UICorner \\ --
UI["15"] = Instance.new("UICorner", UI["14"])


-- // StarterGui.Freecam.Frame.ToggleLagStutterTextButton.UIStroke1 \\ --
UI["16"] = Instance.new("UIStroke", UI["14"])
UI["16"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["16"]["Name"] = [[UIStroke1]]
UI["16"]["Thickness"] = 3
UI["16"]["Color"] = Color3.fromRGB(0, 255, 0)

-- // StarterGui.Freecam.Frame.ToggleLagStutterTextButton.UIStroke2 \\ --
UI["17"] = Instance.new("UIStroke", UI["14"])
UI["17"]["Name"] = [[UIStroke2]]
UI["17"]["Color"] = Color3.fromRGB(0, 255, 0)

-- // StarterGui.Freecam.Frame.ToggleLagStutterTextButton.AspectRatio \\ --
UI["18"] = Instance.new("UIAspectRatioConstraint", UI["14"])
UI["18"]["AspectRatio"] = 3.24
UI["18"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.UICorner \\ --
UI["19"] = Instance.new("UICorner", UI["2"])


-- // StarterGui.Freecam.Frame.UIStroke \\ --
UI["1a"] = Instance.new("UIStroke", UI["2"])
UI["1a"]["Thickness"] = 3
UI["1a"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.UIStroke.UIGradient \\ --
UI["1b"] = Instance.new("UIGradient", UI["1a"])
UI["1b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Freecam.Frame.UIStroke.UIGradient.LocalScript \\ --
UI["1c"] = Instance.new("LocalScript", UI["1b"])


-- // StarterGui.Freecam.Frame.Frame \\ --
UI["1d"] = Instance.new("Frame", UI["2"])
UI["1d"]["BorderSizePixel"] = 0
UI["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1d"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["1d"]["Position"] = UDim2.new(0, 0, 0.105, 0)
UI["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1d"]["BackgroundTransparency"] = 1

-- // StarterGui.Freecam.Frame.Frame.Frame2 \\ --
UI["1e"] = Instance.new("Frame", UI["1d"])
UI["1e"]["BorderSizePixel"] = 0
UI["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["1e"]["Size"] = UDim2.new(1, 0, 0.71229, 0)
UI["1e"]["Position"] = UDim2.new(0.01327, 0, 0.46648, 0)
UI["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1e"]["Name"] = [[Frame2]]
UI["1e"]["BackgroundTransparency"] = 1

-- // StarterGui.Freecam.Frame.Frame.Frame2.UIListLayout \\ --
UI["1f"] = Instance.new("UIListLayout", UI["1e"])
UI["1f"]["Padding"] = UDim.new(0.02, 0)
UI["1f"]["SortOrder"] = Enum.SortOrder.LayoutOrder

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagFallIntervalTextBox \\ --
UI["20"] = Instance.new("TextBox", UI["1e"])
UI["20"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["20"]["PlaceholderColor3"] = Color3.fromRGB(0, 0, 0)
UI["20"]["BorderSizePixel"] = 0
UI["20"]["TextWrapped"] = true
UI["20"]["TextSize"] = 14
UI["20"]["Name"] = [[LagFallIntervalTextBox]]
UI["20"]["TextScaled"] = true
UI["20"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["20"]["ClearTextOnFocus"] = false
UI["20"]["PlaceholderText"] = [[Fall interval]]
UI["20"]["Size"] = UDim2.new(0.46989, 0, 0.13523, 0)
UI["20"]["Position"] = UDim2.new(0.03103, 0, 0.7776, 0)
UI["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["20"]["Text"] = [[0.1]]
UI["20"]["LayoutOrder"] = 2

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagFallIntervalTextBox.UICorner \\ --
UI["21"] = Instance.new("UICorner", UI["20"])


-- // StarterGui.Freecam.Frame.Frame.Frame2.LagFallIntervalTextBox.UIStroke \\ --
UI["22"] = Instance.new("UIStroke", UI["20"])
UI["22"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["22"]["Thickness"] = 3
UI["22"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagFallIntervalTextBox.UIStroke.UIGradient \\ --
UI["23"] = Instance.new("UIGradient", UI["22"])
UI["23"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagFallIntervalTextBox.UIStroke.UIGradient.LocalScript \\ --
UI["24"] = Instance.new("LocalScript", UI["23"])


-- // StarterGui.Freecam.Frame.Frame.Frame2.LagFallIntervalTextBox.UIStroke \\ --
UI["25"] = Instance.new("UIStroke", UI["20"])
UI["25"]["Thickness"] = 1.5
UI["25"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagFallIntervalTextBox.UIStroke.UIGradient \\ --
UI["26"] = Instance.new("UIGradient", UI["25"])
UI["26"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagFallIntervalTextBox.UIStroke.UIGradient.LocalScript \\ --
UI["27"] = Instance.new("LocalScript", UI["26"])


-- // StarterGui.Freecam.Frame.Frame.Frame2.LagFallIntervalTextBox.AspectRatio \\ --
UI["28"] = Instance.new("UIAspectRatioConstraint", UI["20"])
UI["28"]["AspectRatio"] = 3.86
UI["28"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagJumpSpeedTextBox \\ --
UI["29"] = Instance.new("TextBox", UI["1e"])
UI["29"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["29"]["PlaceholderColor3"] = Color3.fromRGB(0, 0, 0)
UI["29"]["BorderSizePixel"] = 0
UI["29"]["TextWrapped"] = true
UI["29"]["TextSize"] = 14
UI["29"]["Name"] = [[LagJumpSpeedTextBox]]
UI["29"]["TextScaled"] = true
UI["29"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["29"]["ClearTextOnFocus"] = false
UI["29"]["PlaceholderText"] = [[Lag Jump Speed 0+]]
UI["29"]["Size"] = UDim2.new(0.46989, 0, 0.13523, 0)
UI["29"]["Position"] = UDim2.new(0.03066, 0, 0.66503, 0)
UI["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["29"]["Text"] = [[3]]
UI["29"]["LayoutOrder"] = 3

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagJumpSpeedTextBox.UICorner \\ --
UI["2a"] = Instance.new("UICorner", UI["29"])


-- // StarterGui.Freecam.Frame.Frame.Frame2.LagJumpSpeedTextBox.UIStroke \\ --
UI["2b"] = Instance.new("UIStroke", UI["29"])
UI["2b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["2b"]["Thickness"] = 3
UI["2b"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagJumpSpeedTextBox.UIStroke.UIGradient \\ --
UI["2c"] = Instance.new("UIGradient", UI["2b"])
UI["2c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagJumpSpeedTextBox.UIStroke.UIGradient.LocalScript \\ --
UI["2d"] = Instance.new("LocalScript", UI["2c"])


-- // StarterGui.Freecam.Frame.Frame.Frame2.LagJumpSpeedTextBox.UIStroke \\ --
UI["2e"] = Instance.new("UIStroke", UI["29"])
UI["2e"]["Thickness"] = 1.5
UI["2e"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagJumpSpeedTextBox.UIStroke.UIGradient \\ --
UI["2f"] = Instance.new("UIGradient", UI["2e"])
UI["2f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagJumpSpeedTextBox.UIStroke.UIGradient.LocalScript \\ --
UI["30"] = Instance.new("LocalScript", UI["2f"])


-- // StarterGui.Freecam.Frame.Frame.Frame2.LagJumpSpeedTextBox.AspectRatio \\ --
UI["31"] = Instance.new("UIAspectRatioConstraint", UI["29"])
UI["31"]["AspectRatio"] = 3.86
UI["31"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagSpeedTextBox \\ --
UI["32"] = Instance.new("TextBox", UI["1e"])
UI["32"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["32"]["PlaceholderColor3"] = Color3.fromRGB(0, 0, 0)
UI["32"]["BorderSizePixel"] = 0
UI["32"]["TextWrapped"] = true
UI["32"]["TextSize"] = 14
UI["32"]["Name"] = [[LagSpeedTextBox]]
UI["32"]["TextScaled"] = true
UI["32"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["32"]["ClearTextOnFocus"] = false
UI["32"]["PlaceholderText"] = [[Lag speed 0-1]]
UI["32"]["Size"] = UDim2.new(0.46989, 0, 0.13523, 0)
UI["32"]["Position"] = UDim2.new(0.02741, 0, 0.89084, 0)
UI["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["32"]["Text"] = [[3]]
UI["32"]["LayoutOrder"] = 1

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagSpeedTextBox.UICorner \\ --
UI["33"] = Instance.new("UICorner", UI["32"])


-- // StarterGui.Freecam.Frame.Frame.Frame2.LagSpeedTextBox.UIStroke \\ --
UI["34"] = Instance.new("UIStroke", UI["32"])
UI["34"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["34"]["Thickness"] = 3
UI["34"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagSpeedTextBox.UIStroke.UIGradient \\ --
UI["35"] = Instance.new("UIGradient", UI["34"])
UI["35"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagSpeedTextBox.UIStroke.UIGradient.LocalScript \\ --
UI["36"] = Instance.new("LocalScript", UI["35"])


-- // StarterGui.Freecam.Frame.Frame.Frame2.LagSpeedTextBox.UIStroke \\ --
UI["37"] = Instance.new("UIStroke", UI["32"])
UI["37"]["Thickness"] = 1.5
UI["37"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagSpeedTextBox.UIStroke.UIGradient \\ --
UI["38"] = Instance.new("UIGradient", UI["37"])
UI["38"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Freecam.Frame.Frame.Frame2.LagSpeedTextBox.UIStroke.UIGradient.LocalScript \\ --
UI["39"] = Instance.new("LocalScript", UI["38"])


-- // StarterGui.Freecam.Frame.Frame.Frame2.LagSpeedTextBox.AspectRatio \\ --
UI["3a"] = Instance.new("UIAspectRatioConstraint", UI["32"])
UI["3a"]["AspectRatio"] = 3.86
UI["3a"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.Frame.Frame2.ToggleLegCollisionTextButton \\ --
UI["3b"] = Instance.new("TextButton", UI["1e"])
UI["3b"]["TextWrapped"] = true
UI["3b"]["BorderSizePixel"] = 0
UI["3b"]["TextSize"] = 14
UI["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["3b"]["TextScaled"] = true
UI["3b"]["BackgroundColor3"] = Color3.fromRGB(87, 0, 0)
UI["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["3b"]["Size"] = UDim2.new(0.47, 0, 0.135, 0)
UI["3b"]["Name"] = [[ToggleLegCollisionTextButton]]
UI["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["3b"]["Text"] = [[Toggle Leg Collision]]
UI["3b"]["Position"] = UDim2.new(0.53831, 0, 0.56309, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame2.ToggleLegCollisionTextButton.UICorner \\ --
UI["3c"] = Instance.new("UICorner", UI["3b"])


-- // StarterGui.Freecam.Frame.Frame.Frame2.ToggleLegCollisionTextButton.UIStroke1 \\ --
UI["3d"] = Instance.new("UIStroke", UI["3b"])
UI["3d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["3d"]["Name"] = [[UIStroke1]]
UI["3d"]["Thickness"] = 3
UI["3d"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame2.ToggleLegCollisionTextButton.UIStroke2 \\ --
UI["3e"] = Instance.new("UIStroke", UI["3b"])
UI["3e"]["Name"] = [[UIStroke2]]
UI["3e"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame2.ToggleLegCollisionTextButton.AspectRatio \\ --
UI["3f"] = Instance.new("UIAspectRatioConstraint", UI["3b"])
UI["3f"]["AspectRatio"] = 3.86
UI["3f"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.Frame.Frame1 \\ --
UI["40"] = Instance.new("Frame", UI["1d"])
UI["40"]["BorderSizePixel"] = 0
UI["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["40"]["Size"] = UDim2.new(1, 0, 0.71229, 0)
UI["40"]["Position"] = UDim2.new(0.51752, 0, 0.46648, 0)
UI["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["40"]["Name"] = [[Frame1]]
UI["40"]["BackgroundTransparency"] = 1

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleArmCollisionTextButton \\ --
UI["41"] = Instance.new("TextButton", UI["40"])
UI["41"]["TextWrapped"] = true
UI["41"]["BorderSizePixel"] = 0
UI["41"]["TextSize"] = 14
UI["41"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["41"]["TextScaled"] = true
UI["41"]["BackgroundColor3"] = Color3.fromRGB(87, 0, 0)
UI["41"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["41"]["Size"] = UDim2.new(0.47, 0, 0.135, 0)
UI["41"]["Name"] = [[ToggleArmCollisionTextButton]]
UI["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["41"]["Text"] = [[Toggle Arm Collsion]]
UI["41"]["Position"] = UDim2.new(0.02799, 0, 0.5603, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleArmCollisionTextButton.UICorner \\ --
UI["42"] = Instance.new("UICorner", UI["41"])


-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleArmCollisionTextButton.UIStroke1 \\ --
UI["43"] = Instance.new("UIStroke", UI["41"])
UI["43"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["43"]["Name"] = [[UIStroke1]]
UI["43"]["Thickness"] = 3
UI["43"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleArmCollisionTextButton.UIStroke2 \\ --
UI["44"] = Instance.new("UIStroke", UI["41"])
UI["44"]["Name"] = [[UIStroke2]]
UI["44"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleArmCollisionTextButton.AspectRatio \\ --
UI["45"] = Instance.new("UIAspectRatioConstraint", UI["41"])
UI["45"]["AspectRatio"] = 3.86
UI["45"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagFallTextButton \\ --
UI["46"] = Instance.new("TextButton", UI["40"])
UI["46"]["TextWrapped"] = true
UI["46"]["BorderSizePixel"] = 0
UI["46"]["TextSize"] = 14
UI["46"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["46"]["TextScaled"] = true
UI["46"]["BackgroundColor3"] = Color3.fromRGB(0, 87, 0)
UI["46"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["46"]["Size"] = UDim2.new(0.47, 0, 0.135, 0)
UI["46"]["LayoutOrder"] = 2
UI["46"]["Name"] = [[ToggleLagFallTextButton]]
UI["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["46"]["Text"] = [[Toggle Lag Fall]]
UI["46"]["Position"] = UDim2.new(0.54483, 0, 0.78324, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagFallTextButton.UICorner \\ --
UI["47"] = Instance.new("UICorner", UI["46"])


-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagFallTextButton.UIStroke1 \\ --
UI["48"] = Instance.new("UIStroke", UI["46"])
UI["48"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["48"]["Name"] = [[UIStroke1]]
UI["48"]["Thickness"] = 3
UI["48"]["Color"] = Color3.fromRGB(0, 255, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagFallTextButton.UIStroke2 \\ --
UI["49"] = Instance.new("UIStroke", UI["46"])
UI["49"]["Name"] = [[UIStroke2]]
UI["49"]["Color"] = Color3.fromRGB(0, 255, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagFallTextButton.AspectRatio \\ --
UI["4a"] = Instance.new("UIAspectRatioConstraint", UI["46"])
UI["4a"]["AspectRatio"] = 3.86
UI["4a"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagJumpSpeedTextButton \\ --
UI["4b"] = Instance.new("TextButton", UI["40"])
UI["4b"]["TextWrapped"] = true
UI["4b"]["BorderSizePixel"] = 0
UI["4b"]["TextSize"] = 14
UI["4b"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["4b"]["TextScaled"] = true
UI["4b"]["BackgroundColor3"] = Color3.fromRGB(87, 0, 0)
UI["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["4b"]["Size"] = UDim2.new(0.47, 0, 0.135, 0)
UI["4b"]["LayoutOrder"] = 3
UI["4b"]["Name"] = [[ToggleLagJumpSpeedTextButton]]
UI["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["4b"]["Text"] = [[Toggle Jump Speed]]
UI["4b"]["Position"] = UDim2.new(0.53831, 0, 0.67626, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagJumpSpeedTextButton.UICorner \\ --
UI["4c"] = Instance.new("UICorner", UI["4b"])


-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagJumpSpeedTextButton.UIStroke1 \\ --
UI["4d"] = Instance.new("UIStroke", UI["4b"])
UI["4d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["4d"]["Name"] = [[UIStroke1]]
UI["4d"]["Thickness"] = 3
UI["4d"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagJumpSpeedTextButton.UIStroke2 \\ --
UI["4e"] = Instance.new("UIStroke", UI["4b"])
UI["4e"]["Name"] = [[UIStroke2]]
UI["4e"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagJumpSpeedTextButton.AspectRatio \\ --
UI["4f"] = Instance.new("UIAspectRatioConstraint", UI["4b"])
UI["4f"]["AspectRatio"] = 3.86
UI["4f"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagSpeedTextButton \\ --
UI["50"] = Instance.new("TextButton", UI["40"])
UI["50"]["TextWrapped"] = true
UI["50"]["BorderSizePixel"] = 0
UI["50"]["TextSize"] = 14
UI["50"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["50"]["TextScaled"] = true
UI["50"]["BackgroundColor3"] = Color3.fromRGB(87, 0, 0)
UI["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["50"]["Size"] = UDim2.new(0.47, 0, 0.135, 0)
UI["50"]["LayoutOrder"] = 1
UI["50"]["Name"] = [[ToggleLagSpeedTextButton]]
UI["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["50"]["Text"] = [[Toggle Speed]]
UI["50"]["Position"] = UDim2.new(0.54483, 0, 0.8909, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagSpeedTextButton.UICorner \\ --
UI["51"] = Instance.new("UICorner", UI["50"])


-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagSpeedTextButton.UIStroke1 \\ --
UI["52"] = Instance.new("UIStroke", UI["50"])
UI["52"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["52"]["Name"] = [[UIStroke1]]
UI["52"]["Thickness"] = 3
UI["52"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagSpeedTextButton.UIStroke2 \\ --
UI["53"] = Instance.new("UIStroke", UI["50"])
UI["53"]["Name"] = [[UIStroke2]]
UI["53"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Freecam.Frame.Frame.Frame1.ToggleLagSpeedTextButton.AspectRatio \\ --
UI["54"] = Instance.new("UIAspectRatioConstraint", UI["50"])
UI["54"]["AspectRatio"] = 3.86
UI["54"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.Frame.Frame1.UIListLayout \\ --
UI["55"] = Instance.new("UIListLayout", UI["40"])
UI["55"]["Padding"] = UDim.new(0.02, 0)
UI["55"]["SortOrder"] = Enum.SortOrder.LayoutOrder

-- // StarterGui.Freecam.Frame.DeleteTextButton \\ --
UI["56"] = Instance.new("TextButton", UI["2"])
UI["56"]["TextWrapped"] = true
UI["56"]["BorderSizePixel"] = 0
UI["56"]["TextSize"] = 14
UI["56"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["56"]["TextScaled"] = true
UI["56"]["BackgroundColor3"] = Color3.fromRGB(87, 0, 0)
UI["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["56"]["AnchorPoint"] = Vector2.new(1, 0)
UI["56"]["Size"] = UDim2.new(0.191, 0, 0.082, 0)
UI["56"]["Name"] = [[DeleteTextButton]]
UI["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["56"]["Text"] = [[X]]
UI["56"]["Position"] = UDim2.new(0.99, 0, 0.01, 0)

-- // StarterGui.Freecam.Frame.DeleteTextButton.UICorner \\ --
UI["57"] = Instance.new("UICorner", UI["56"])


-- // StarterGui.Freecam.Frame.DeleteTextButton.AspectRatio \\ --
UI["58"] = Instance.new("UIAspectRatioConstraint", UI["56"])
UI["58"]["AspectRatio"] = 1.42
UI["58"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.DeleteTextButton.UIStroke \\ --
UI["59"] = Instance.new("UIStroke", UI["56"])
UI["59"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["59"]["Thickness"] = 3
UI["59"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.DeleteTextButton.UIStroke.UIGradient \\ --
UI["5a"] = Instance.new("UIGradient", UI["59"])
UI["5a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Freecam.Frame.DeleteTextButton.UIStroke.UIGradient.LocalScript \\ --
UI["5b"] = Instance.new("LocalScript", UI["5a"])


-- // StarterGui.Freecam.Frame.DeleteTextButton.UIStroke \\ --
UI["5c"] = Instance.new("UIStroke", UI["56"])
UI["5c"]["Thickness"] = 1.5
UI["5c"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.DeleteTextButton.UIStroke.UIGradient \\ --
UI["5d"] = Instance.new("UIGradient", UI["5c"])
UI["5d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Freecam.Frame.DeleteTextButton.UIStroke.UIGradient.LocalScript \\ --
UI["5e"] = Instance.new("LocalScript", UI["5d"])


-- // StarterGui.Freecam.Frame.ToggleVisibleTextButton \\ --
UI["5f"] = Instance.new("TextButton", UI["2"])
UI["5f"]["TextWrapped"] = true
UI["5f"]["BorderSizePixel"] = 0
UI["5f"]["TextSize"] = 14
UI["5f"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["5f"]["TextScaled"] = true
UI["5f"]["BackgroundColor3"] = Color3.fromRGB(87, 0, 0)
UI["5f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["5f"]["AnchorPoint"] = Vector2.new(1, 0)
UI["5f"]["Size"] = UDim2.new(0.19079, 0, 0.08165, 0)
UI["5f"]["Name"] = [[ToggleVisibleTextButton]]
UI["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["5f"]["Text"] = [[-]]
UI["5f"]["Position"] = UDim2.new(0.81, 0, 0.01, 0)

-- // StarterGui.Freecam.Frame.ToggleVisibleTextButton.UICorner \\ --
UI["60"] = Instance.new("UICorner", UI["5f"])


-- // StarterGui.Freecam.Frame.ToggleVisibleTextButton.AspectRatio \\ --
UI["61"] = Instance.new("UIAspectRatioConstraint", UI["5f"])
UI["61"]["AspectRatio"] = 1.42
UI["61"]["Name"] = [[AspectRatio]]

-- // StarterGui.Freecam.Frame.ToggleVisibleTextButton.UIStroke \\ --
UI["62"] = Instance.new("UIStroke", UI["5f"])
UI["62"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["62"]["Thickness"] = 3
UI["62"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.ToggleVisibleTextButton.UIStroke.UIGradient \\ --
UI["63"] = Instance.new("UIGradient", UI["62"])
UI["63"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Freecam.Frame.ToggleVisibleTextButton.UIStroke.UIGradient.LocalScript \\ --
UI["64"] = Instance.new("LocalScript", UI["63"])


-- // StarterGui.Freecam.Frame.ToggleVisibleTextButton.UIStroke \\ --
UI["65"] = Instance.new("UIStroke", UI["5f"])
UI["65"]["Thickness"] = 1.5
UI["65"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Freecam.Frame.ToggleVisibleTextButton.UIStroke.UIGradient \\ --
UI["66"] = Instance.new("UIGradient", UI["65"])
UI["66"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Freecam.Frame.ToggleVisibleTextButton.UIStroke.UIGradient.LocalScript \\ --
UI["67"] = Instance.new("LocalScript", UI["66"])


-- // StarterGui.Freecam.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_e()
local script = UI["e"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_e)
-- // StarterGui.Freecam.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_11()
local script = UI["11"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_11)
-- // StarterGui.Freecam.Frame.MainLocalScript \\ --
local function SCRIPT_12()
local script = UI["12"]
	if not game:IsLoaded() then
		print("waiting for game to load")
		game.Loaded:Wait()
	end
	print("game loaded")
	
	local charactergotten = false
	local char = nil
	
	while charactergotten == false do
		if not game.Players.LocalPlayer.Character then
			print("character not found")
		else
			char = game.Players.LocalPlayer.Character
			print("character found")
			charactergotten = true
		end
		task.wait()
	end
	--Lag variables
	local lagonoroff = false
	local lagspeedonoroff = false
	local lagfallonoroff = true
	local lagjumpspeedonoroff = false
	local lagspeed = 3
	local lagfallinterval = 0.1
	local lagjumpspeed = 3
	local ogwalkspeed = char.Humanoid.WalkSpeed
	local ogjumppower = char.Humanoid.JumpPower
	local oggravity = game.Workspace.Gravity
	local stutteronoroff = true
	local armcollisiononoroff = false
	local legcollisiononoroff = false
	
	--Extra variables
	local visible = true
	---local slidermode = false
	local lastrigtype = game.Players.LocalPlayer.Character.Humanoid.RigType
	
	--Button variables
	local visiblebutton = script.Parent:WaitForChild("ToggleVisibleTextButton")
	local lagonoroffbutton = script.Parent:WaitForChild("ToggleLagOnOrOffTextButton")
	local lagspeedonoroffbutton = script.Parent:WaitForChild("Frame"):WaitForChild("Frame1"):WaitForChild("ToggleLagSpeedTextButton")
	local lagfallonorofftextbutton = script.Parent:WaitForChild("Frame"):WaitForChild("Frame1"):WaitForChild("ToggleLagFallTextButton")
	--local slideronorofftextbutton = script.Parent:WaitForChild("ToggleSliderModeTextButton")
	local lagjumpspeedbutton = script.Parent:WaitForChild("Frame"):WaitForChild("Frame1"):WaitForChild("ToggleLagJumpSpeedTextButton")
	local stutterbutton = script.Parent:WaitForChild("ToggleLagStutterTextButton")
	local deletebutton = script.Parent:WaitForChild("DeleteTextButton")
	local legcollisionbutton = script.Parent:WaitForChild("Frame"):WaitForChild("Frame2"):WaitForChild("ToggleLegCollisionTextButton")
	local armcollisionbutton = script.Parent:WaitForChild("Frame"):WaitForChild("Frame1"):WaitForChild("ToggleArmCollisionTextButton")
	
	--Textbox variables
	local lagspeed = tonumber(script.Parent:WaitForChild("Frame"):WaitForChild("Frame2"):WaitForChild("LagSpeedTextBox").Text)
	local lagfallinterval = tonumber(script.Parent:WaitForChild("Frame"):WaitForChild("Frame2"):WaitForChild("LagFallIntervalTextBox").Text)
	local lagjumpspeed = tonumber(script.Parent:WaitForChild("Frame"):WaitForChild("Frame2"):WaitForChild("LagJumpSpeedTextBox").Text)
	
	--Toggle visibility on or off
	visiblebutton.Activated:Connect(function()
		if visible == true then
			visible = false
			visiblebutton.Text = "+"
			for _, v in pairs(script.Parent:GetChildren()) do
				if v.Name ~= "ToggleVisibleTextButton" and v.ClassName ~= "LocalScript" and v.ClassName ~= "UIStroke" and v.ClassName ~= "UICorner" and v.ClassName ~= "UIAspectRatioConstraint" then
					v.Visible = false
				end
				--task.wait()
			end
			script.Parent.BackgroundTransparency = 1
			script.Parent:WaitForChild("UIStroke").Enabled = false
		else
			visible = true
			visiblebutton.Text = "-"
			for _, v in pairs(script.Parent:GetChildren()) do
				if v.ClassName ~= "LocalScript" and v.ClassName ~= "UIStroke" and v.ClassName ~= "UICorner" and v.ClassName ~= "UIAspectRatioConstraint" then
					v.Visible = true
				end
				--task.wait()
			end
			script.Parent.BackgroundTransparency = 0
			script.Parent:WaitForChild("UIStroke").Enabled = true
		end
	end)
	
	lagonoroffbutton.Activated:Connect(function()
		lagonoroff = not lagonoroff
		if lagonoroff == false then
			lagonoroffbutton.BackgroundColor3 = Color3.new(0.337255, 0, 0)
			lagonoroffbutton.UIStroke1.Color = Color3.new(1, 0, 0)
			lagonoroffbutton.UIStroke2.Color = Color3.new(1, 0, 0)
		else
			lagonoroffbutton.BackgroundColor3 = Color3.new(0, 0.337255, 0)
			lagonoroffbutton.UIStroke1.Color = Color3.new(0, 1, 0)
			lagonoroffbutton.UIStroke2.Color = Color3.new(0, 1, 0)
		end
	end)
	
	lagspeedonoroffbutton.Activated:Connect(function()
		lagspeedonoroff = not lagspeedonoroff
		if lagspeedonoroff == false then
			lagspeedonoroffbutton.BackgroundColor3 = Color3.new(0.337255, 0, 0)
			lagspeedonoroffbutton.UIStroke1.Color = Color3.new(1, 0, 0)
			lagspeedonoroffbutton.UIStroke2.Color = Color3.new(1, 0, 0)
		else
			lagspeedonoroffbutton.BackgroundColor3 = Color3.new(0, 0.337255, 0)
			lagspeedonoroffbutton.UIStroke1.Color = Color3.new(0, 1, 0)
			lagspeedonoroffbutton.UIStroke2.Color = Color3.new(0, 1, 0)
		end
	end)
	
	lagfallonorofftextbutton.Activated:Connect(function()
		lagfallonoroff = not lagfallonoroff
		if lagfallonoroff == false then
			lagfallonorofftextbutton.BackgroundColor3 = Color3.new(0.337255, 0, 0)
			lagfallonorofftextbutton.UIStroke1.Color = Color3.new(1, 0, 0)
			lagfallonorofftextbutton.UIStroke2.Color = Color3.new(1, 0, 0)
		else
			lagfallonorofftextbutton.BackgroundColor3 = Color3.new(0, 0.337255, 0)
			lagfallonorofftextbutton.UIStroke1.Color = Color3.new(0, 1, 0)
			lagfallonorofftextbutton.UIStroke2.Color = Color3.new(0, 1, 0)
		end
	end)
	
	--[[slideronorofftextbutton.Activated:Connect(function()
		slidermode = not slidermode
		if slidermode == false then
			slideronorofftextbutton.BackgroundColor3 = Color3.new(0.337255, 0, 0)
			slideronorofftextbutton.UIStroke1.Color = Color3.new(1, 0, 0)
			slideronorofftextbutton.UIStroke2.Color = Color3.new(1, 0, 0)
		else
			slideronorofftextbutton.BackgroundColor3 = Color3.new(0, 0.337255, 0)
			slideronorofftextbutton.UIStroke1.Color = Color3.new(0, 1, 0)
			slideronorofftextbutton.UIStroke2.Color = Color3.new(0, 1, 0)
		end
	end)
	--]]
	
	lagjumpspeedbutton.Activated:Connect(function()
		lagjumpspeedonoroff = not lagjumpspeedonoroff
		if lagjumpspeedonoroff == false then
			lagjumpspeedbutton.BackgroundColor3 = Color3.new(0.337255, 0, 0)
			lagjumpspeedbutton.UIStroke1.Color = Color3.new(1, 0, 0)
			lagjumpspeedbutton.UIStroke2.Color = Color3.new(1, 0, 0)
		else
			lagjumpspeedbutton.BackgroundColor3 = Color3.new(0, 0.337255, 0)
			lagjumpspeedbutton.UIStroke1.Color = Color3.new(0, 1, 0)
			lagjumpspeedbutton.UIStroke2.Color = Color3.new(0, 1, 0)
		end
	end)
	
	stutterbutton.Activated:Connect(function()
		stutteronoroff = not stutteronoroff
		if stutteronoroff == false then
			stutterbutton.BackgroundColor3 = Color3.new(0.337255, 0, 0)
			stutterbutton.UIStroke1.Color = Color3.new(1, 0, 0)
			stutterbutton.UIStroke2.Color = Color3.new(1, 0, 0)
		else
			stutterbutton.BackgroundColor3 = Color3.new(0, 0.337255, 0)
			stutterbutton.UIStroke1.Color = Color3.new(0, 1, 0)
			stutterbutton.UIStroke2.Color = Color3.new(0, 1, 0)
		end
	end)
	
	legcollisionbutton.Activated:Connect(function()
		legcollisiononoroff = not legcollisiononoroff
		if legcollisiononoroff == false then
			legcollisionbutton.BackgroundColor3 = Color3.new(0.337255, 0, 0)
			legcollisionbutton.UIStroke1.Color = Color3.new(1, 0, 0)
			legcollisionbutton.UIStroke2.Color = Color3.new(1, 0, 0)
		else
			legcollisionbutton.BackgroundColor3 = Color3.new(0, 0.337255, 0)
			legcollisionbutton.UIStroke1.Color = Color3.new(0, 1, 0)
			legcollisionbutton.UIStroke2.Color = Color3.new(0, 1, 0)
		end
	end)
	
	armcollisionbutton.Activated:Connect(function()
		armcollisiononoroff = not armcollisiononoroff
		if armcollisiononoroff == false then
			armcollisionbutton.BackgroundColor3 = Color3.new(0.337255, 0, 0)
			armcollisionbutton.UIStroke1.Color = Color3.new(1, 0, 0) 
			armcollisionbutton.UIStroke2.Color = Color3.new(1, 0, 0)
		else
			armcollisionbutton.BackgroundColor3 = Color3.new(0, 0.337255, 0)
			armcollisionbutton.UIStroke1.Color = Color3.new(0, 1, 0)
			armcollisionbutton.UIStroke2.Color = Color3.new(0, 1, 0)
		end
	end)
	
	--Close the GUI
	deletebutton.Activated:Connect(function()
		script.Parent.Parent:Destroy()
	end)
	
	--MAKE SURE THIS IS AT THE END OR THE REST OF THE SCRIPT WONT RUN!!!
	--Checks if your RigType is R6 or R15 and then run the simulated lag function for that RigType
	while true do
		char = game.Players.LocalPlayer.Character
		lagspeed = tonumber(script.Parent:WaitForChild("Frame"):WaitForChild("Frame2"):WaitForChild("LagSpeedTextBox").Text)
		lagfallinterval = tonumber(script.Parent:WaitForChild("Frame"):WaitForChild("Frame2"):WaitForChild("LagFallIntervalTextBox").Text)
		lagjumpspeed = tonumber(script.Parent:WaitForChild("Frame"):WaitForChild("Frame2"):WaitForChild("LagJumpSpeedTextBox").Text)
		if lagonoroff == true then
			if char.Humanoid.RigType == Enum.HumanoidRigType.R6 and stutteronoroff == true then
				lastrigtype = Enum.HumanoidRigType.R6
				--r6 code here
				char.Torso.Anchored = true
				if lagfallonoroff == true then
					char.Humanoid.Jump = true
				end
				--task.wait(lagfallinterval)
				wait(lagfallinterval)
				char.Torso.Anchored = false
				if lagfallonoroff == true then
					char.Humanoid.Sit = true
				end
				--task.wait(lagfallinterval)
				wait(lagfallinterval)
			elseif char.Humanoid.RigType == Enum.HumanoidRigType.R15 and stutteronoroff == true then
				lastrigtype = Enum.HumanoidRigType.R15
				--r15 code here
				char.UpperTorso.Anchored = true
				if lagfallonoroff == true then
					char.Humanoid.Jump = true
				end
				--task.wait(lagfallinterval)
				wait(lagfallinterval)
				char.UpperTorso.Anchored = false
				if lagfallonoroff == true then
					char.Humanoid.Sit = true
				end
			else
				--task.wait(lagfallinterval)
				wait(lagfallinterval)  
			end
			if lagspeedonoroff == true then
				char.Humanoid.WalkSpeed = lagspeed
			else
				char.Humanoid.WalkSpeed = ogwalkspeed
			end
			if lagjumpspeedonoroff == true then
				game.Workspace.Gravity = lagjumpspeed/3
				char.Humanoid.JumpPower = lagjumpspeed
			else
				game.Workspace.Gravity = oggravity
				char.Humanoid.JumpPower = ogjumppower
			end	
			if armcollisiononoroff == true and char.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				char["Left Arm"].CanCollide = true
				char["Right Arm"].CanCollide = true
			elseif armcollisiononoroff == false and char.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				char["Left Arm"].CanCollide = false
				char["Right Arm"].CanCollide = false
			end
			if legcollisiononoroff == true and char.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				char["Left Leg"].CanCollide = true
				char["Right Leg"].CanCollide = true
			elseif legcollisiononoroff == false and char.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				char["Left Leg"].CanCollide = false
				char["Right Leg"].CanCollide = false
			end
		else
			char.Humanoid.WalkSpeed = ogwalkspeed
			game.Workspace.Gravity = oggravity
			char.Humanoid.JumpPower = ogjumppower
			char["Left Leg"].CanCollide = false
			char["Right Leg"].CanCollide = false
			char["Left Arm"].CanCollide = false
			char["Right Arm"].CanCollide = false
			task.wait()
		end
	end
	--[[
	while true do
		if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
			game.Players.LocalPlayer.Character.Torso.Anchored = true
		else
			game.Players.LocalPlayer.Character.UpperTorso.Anchored = true
		end
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
		wait(0.1)
		if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
			game.Players.LocalPlayer.Character.Torso.Anchored = false
		else
			game.Players.LocalPlayer.Character.UpperTorso.Anchored = false
		end
		game.Players.LocalPlayer.Character.Humanoid.Sit = true
		wait(0.1)
	end
	--]]
end
task.spawn(SCRIPT_12)
-- // StarterGui.Freecam.Frame.DragLocalScript \\ --
local function SCRIPT_13()
local script = UI["13"]
	local UserInputService = game:GetService('UserInputService')
	
	local frame = script.Parent
	
	local leadFrame = Instance.new('Frame') do
		leadFrame.AnchorPoint = frame.AnchorPoint
		leadFrame.Position = frame.Position
		leadFrame.Size = frame.Size
		leadFrame.Name = `Lead {frame.Name}`
		leadFrame.Visible = false
		leadFrame.Parent = frame.Parent
	end
	
	local screenGui = frame:FindFirstAncestorOfClass('ScreenGui')
	
	local inputChanged = nil
	local inputEnded = nil
	
	local function getBoundsRelations(guiObject : GuiObject)
		local bounds = screenGui.AbsoluteSize
		local topLeft = screenGui.IgnoreGuiInset and guiObject.AbsolutePosition + Vector2.new(0, 36) or guiObject.AbsolutePosition
		local bottomRight = topLeft + guiObject.AbsoluteSize
	
		local boundRelations = {
			Top = topLeft.Y < 0 and math.abs(topLeft.Y) or nil,
			Left = topLeft.X < 0 and math.abs(topLeft.X) or nil,
			Right = bottomRight.X > bounds.X and math.abs(bottomRight.X - bounds.X) or nil,
			Bottom = bottomRight.Y > bounds.Y and math.abs(bottomRight.Y - bounds.Y) or nil,
		}
	
		return (not boundRelations.Top
			and not boundRelations.Bottom
			and not boundRelations.Left
			and not boundRelations.Right), boundRelations
	end
	
	frame.InputBegan:Connect(function(inputObject : InputObject)
		if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
	
			local lastMousePosition = UserInputService:GetMouseLocation()
			local goalPosition = frame.Position
	
			inputChanged = UserInputService.InputChanged:Connect(function(input : InputObject, event : boolean)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					local currentMousePosition = UserInputService:GetMouseLocation()
					local mouseDelta = currentMousePosition - lastMousePosition
	
					goalPosition += UDim2.fromOffset(mouseDelta.X, mouseDelta.Y)
	
					leadFrame.Position = goalPosition
	
					local isInBounds, relations = getBoundsRelations(leadFrame)
	
					if not isInBounds then
						local x = (relations.Left or 0) - (relations.Right or 0)
						local y = (relations.Top or 0) - (relations.Bottom or 0)
	
						goalPosition += UDim2.fromOffset(x, y)
					end
	
					frame.Position = goalPosition
					lastMousePosition = currentMousePosition
				end
			end)
	
			inputEnded = frame.InputEnded:Connect(function(input : InputObject)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					inputChanged:Disconnect()
					inputChanged = nil
	
					inputEnded:Disconnect()
					inputEnded = nil
				end
			end)
		end
	end)
	
	frame.Destroying:Once(function()
	
		leadFrame = leadFrame:Destroy()
	
		if inputChanged  then
			inputChanged:Disconnect()
			inputChanged = nil
		end
	
		if inputEnded then
			inputEnded:Disconnect()
			inputEnded = nil
		end
	end)
end
task.spawn(SCRIPT_13)
-- // StarterGui.Freecam.Frame.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_1c()
local script = UI["1c"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_1c)
-- // StarterGui.Freecam.Frame.Frame.Frame2.LagFallIntervalTextBox.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_24()
local script = UI["24"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_24)
-- // StarterGui.Freecam.Frame.Frame.Frame2.LagFallIntervalTextBox.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_27()
local script = UI["27"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_27)
-- // StarterGui.Freecam.Frame.Frame.Frame2.LagJumpSpeedTextBox.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_2d()
local script = UI["2d"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_2d)
-- // StarterGui.Freecam.Frame.Frame.Frame2.LagJumpSpeedTextBox.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_30()
local script = UI["30"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_30)
-- // StarterGui.Freecam.Frame.Frame.Frame2.LagSpeedTextBox.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_36()
local script = UI["36"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_36)
-- // StarterGui.Freecam.Frame.Frame.Frame2.LagSpeedTextBox.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_39()
local script = UI["39"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_39)
-- // StarterGui.Freecam.Frame.DeleteTextButton.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_5b()
local script = UI["5b"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_5b)
-- // StarterGui.Freecam.Frame.DeleteTextButton.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_5e()
local script = UI["5e"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_5e)
-- // StarterGui.Freecam.Frame.ToggleVisibleTextButton.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_64()
local script = UI["64"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_64)
-- // StarterGui.Freecam.Frame.ToggleVisibleTextButton.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_67()
local script = UI["67"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_67)

return UI["1"], require;
