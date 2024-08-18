--[[ This is a complicated script made to set a platform under you at the height you set it to.                                                              --]
I made this because whenever I use the float command in infinite yield (DONT JUDGE ME ITS A GREAT LOCAL ADMIN SCRIPT) it makes me float but whenver I jump
I stay at the point I was at when I jumped and I want to make a more realistic fake platform script so here it is!
--]]                                                                                                                                                         --[
------------------------------------------------------------------------------------------------------------------------------------
As I said below, redistributing is stictly FORBIDDEN. If you decide to redistribute this code anyways, it may result in legal action.
------------------------------------------------------------------------------------------------------------------------------------


-- // REDISTRIBUTING IS STRICTLY FORBIDDEN. MAY RESULT IN LEGAL ACTION \\ -- 

-- // INSTANCES: 73 | SCRIPTS: 16 | MODULES: 0 \\ --

if not game:IsLoaded() then
	print("waiting for game to load")
	game.Loaded:Wait()
end
print("game loaded")
task.wait(2)

local UI = {}

-- // StarterGui.Platform \\ --
UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
UI["1"]["Enabled"] = true
UI["1"]["Name"] = [[Platform]]
UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

-- // StarterGui.Platform.Frame \\ --
UI["2"] = Instance.new("Frame", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["2"]["Size"] = UDim2.new(0.23541, 0, 0.58688, 0)
UI["2"]["Position"] = UDim2.new(0.65178, 0, 0.07869, 0)
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

-- // StarterGui.Platform.Frame.UIAspectRatioConstraint \\ --
UI["3"] = Instance.new("UIAspectRatioConstraint", UI["2"])
UI["3"]["AspectRatio"] = 2.09

-- // StarterGui.Platform.Frame.TextLabel \\ --
UI["4"] = Instance.new("TextLabel", UI["2"])
UI["4"]["TextWrapped"] = true
UI["4"]["BorderSizePixel"] = 0
UI["4"]["TextScaled"] = true
UI["4"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["4"]["TextSize"] = 14
UI["4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["4"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["Size"] = UDim2.new(0.61014, 0, 0.54877, 0)
UI["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["Text"] = [[SuperBlueEyeBall's Platform script]]
UI["4"]["Position"] = UDim2.new(0.015, 0, 0.01, 0)

-- // StarterGui.Platform.Frame.TextLabel.UICorner \\ --
UI["5"] = Instance.new("UICorner", UI["4"])


-- // StarterGui.Platform.Frame.TextLabel.AspectRatio \\ --
UI["6"] = Instance.new("UIAspectRatioConstraint", UI["4"])
UI["6"]["AspectRatio"] = 5.82
UI["6"]["Name"] = [[AspectRatio]]

-- // StarterGui.Platform.Frame.TextLabel.UIStroke \\ --
UI["7"] = Instance.new("UIStroke", UI["4"])
UI["7"]["Thickness"] = 1.5
UI["7"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient \\ --
UI["8"] = Instance.new("UIGradient", UI["7"])
UI["8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 163, 233)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 163, 233))}

-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
UI["9"] = Instance.new("LocalScript", UI["8"])


-- // StarterGui.Platform.Frame.TextLabel.UIStroke \\ --
UI["a"] = Instance.new("UIStroke", UI["4"])
UI["a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["a"]["Thickness"] = 3
UI["a"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient \\ --
UI["b"] = Instance.new("UIGradient", UI["a"])
UI["b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 163, 233)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 163, 233))}

-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
UI["c"] = Instance.new("LocalScript", UI["b"])


-- // StarterGui.Platform.Frame.MainPlatformLocalScript \\ --
UI["d"] = Instance.new("LocalScript", UI["2"])
UI["d"]["Name"] = [[MainPlatformLocalScript]]

-- // StarterGui.Platform.Frame.DragLocalScript \\ --
UI["e"] = Instance.new("LocalScript", UI["2"])
UI["e"]["Name"] = [[DragLocalScript]]

-- // StarterGui.Platform.Frame.UICorner \\ --
UI["f"] = Instance.new("UICorner", UI["2"])


-- // StarterGui.Platform.Frame.UIStroke \\ --
UI["10"] = Instance.new("UIStroke", UI["2"])
UI["10"]["Thickness"] = 3
UI["10"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.UIStroke.UIGradient \\ --
UI["11"] = Instance.new("UIGradient", UI["10"])
UI["11"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Platform.Frame.UIStroke.UIGradient.LocalScript \\ --
UI["12"] = Instance.new("LocalScript", UI["11"])


-- // StarterGui.Platform.Frame.DeleteTextButton \\ --
UI["13"] = Instance.new("TextButton", UI["2"])
UI["13"]["TextWrapped"] = true
UI["13"]["BorderSizePixel"] = 0
UI["13"]["TextSize"] = 14
UI["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["13"]["TextScaled"] = true
UI["13"]["BackgroundColor3"] = Color3.fromRGB(87, 0, 0)
UI["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["13"]["AnchorPoint"] = Vector2.new(1, 0)
UI["13"]["Size"] = UDim2.new(0.13599, 0, 0.28473, 0)
UI["13"]["Name"] = [[DeleteTextButton]]
UI["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["13"]["Text"] = [[X]]
UI["13"]["Position"] = UDim2.new(0.99, 0, 0.01, 0)

-- // StarterGui.Platform.Frame.DeleteTextButton.UICorner \\ --
UI["14"] = Instance.new("UICorner", UI["13"])


-- // StarterGui.Platform.Frame.DeleteTextButton.AspectRatio \\ --
UI["15"] = Instance.new("UIAspectRatioConstraint", UI["13"])
UI["15"]["AspectRatio"] = 1.42
UI["15"]["Name"] = [[AspectRatio]]

-- // StarterGui.Platform.Frame.DeleteTextButton.UIStroke \\ --
UI["16"] = Instance.new("UIStroke", UI["13"])
UI["16"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["16"]["Thickness"] = 3
UI["16"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.DeleteTextButton.UIStroke.UIGradient \\ --
UI["17"] = Instance.new("UIGradient", UI["16"])
UI["17"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Platform.Frame.DeleteTextButton.UIStroke.UIGradient.LocalScript \\ --
UI["18"] = Instance.new("LocalScript", UI["17"])


-- // StarterGui.Platform.Frame.DeleteTextButton.UIStroke \\ --
UI["19"] = Instance.new("UIStroke", UI["13"])
UI["19"]["Thickness"] = 1.5
UI["19"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.DeleteTextButton.UIStroke.UIGradient \\ --
UI["1a"] = Instance.new("UIGradient", UI["19"])
UI["1a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Platform.Frame.DeleteTextButton.UIStroke.UIGradient.LocalScript \\ --
UI["1b"] = Instance.new("LocalScript", UI["1a"])


-- // StarterGui.Platform.Frame.ToggleVisibleTextButton \\ --
UI["1c"] = Instance.new("TextButton", UI["2"])
UI["1c"]["TextWrapped"] = true
UI["1c"]["BorderSizePixel"] = 0
UI["1c"]["TextSize"] = 14
UI["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["1c"]["TextScaled"] = true
UI["1c"]["BackgroundColor3"] = Color3.fromRGB(87, 0, 0)
UI["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["1c"]["AnchorPoint"] = Vector2.new(1, 0)
UI["1c"]["Size"] = UDim2.new(0.136, 0, 0.285, 0)
UI["1c"]["Name"] = [[ToggleVisibleTextButton]]
UI["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["1c"]["Text"] = [[-]]
UI["1c"]["Position"] = UDim2.new(0.81, 0, 0.01, 0)

-- // StarterGui.Platform.Frame.ToggleVisibleTextButton.UICorner \\ --
UI["1d"] = Instance.new("UICorner", UI["1c"])


-- // StarterGui.Platform.Frame.ToggleVisibleTextButton.AspectRatio \\ --
UI["1e"] = Instance.new("UIAspectRatioConstraint", UI["1c"])
UI["1e"]["AspectRatio"] = 1.42
UI["1e"]["Name"] = [[AspectRatio]]

-- // StarterGui.Platform.Frame.ToggleVisibleTextButton.UIStroke \\ --
UI["1f"] = Instance.new("UIStroke", UI["1c"])
UI["1f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["1f"]["Thickness"] = 3
UI["1f"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.ToggleVisibleTextButton.UIStroke.UIGradient \\ --
UI["20"] = Instance.new("UIGradient", UI["1f"])
UI["20"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Platform.Frame.ToggleVisibleTextButton.UIStroke.UIGradient.LocalScript \\ --
UI["21"] = Instance.new("LocalScript", UI["20"])


-- // StarterGui.Platform.Frame.ToggleVisibleTextButton.UIStroke \\ --
UI["22"] = Instance.new("UIStroke", UI["1c"])
UI["22"]["Thickness"] = 1.5
UI["22"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.ToggleVisibleTextButton.UIStroke.UIGradient \\ --
UI["23"] = Instance.new("UIGradient", UI["22"])
UI["23"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Platform.Frame.ToggleVisibleTextButton.UIStroke.UIGradient.LocalScript \\ --
UI["24"] = Instance.new("LocalScript", UI["23"])


-- // StarterGui.Platform.Frame.ToggleLagOnOrOffTextButton \\ --
UI["25"] = Instance.new("TextButton", UI["2"])
UI["25"]["TextWrapped"] = true
UI["25"]["BorderSizePixel"] = 0
UI["25"]["TextSize"] = 14
UI["25"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["25"]["TextScaled"] = true
UI["25"]["BackgroundColor3"] = Color3.fromRGB(87, 0, 0)
UI["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["25"]["Size"] = UDim2.new(0.44099, 0, 0.64952, 0)
UI["25"]["Name"] = [[ToggleLagOnOrOffTextButton]]
UI["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["25"]["Text"] = [[Toggle on or off]]
UI["25"]["Position"] = UDim2.new(0.03745, 0, 0.30658, 0)

-- // StarterGui.Platform.Frame.ToggleLagOnOrOffTextButton.UICorner \\ --
UI["26"] = Instance.new("UICorner", UI["25"])


-- // StarterGui.Platform.Frame.ToggleLagOnOrOffTextButton.UIStroke1 \\ --
UI["27"] = Instance.new("UIStroke", UI["25"])
UI["27"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["27"]["Name"] = [[UIStroke1]]
UI["27"]["Thickness"] = 3
UI["27"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Platform.Frame.ToggleLagOnOrOffTextButton.UIStroke2 \\ --
UI["28"] = Instance.new("UIStroke", UI["25"])
UI["28"]["Name"] = [[UIStroke2]]
UI["28"]["Color"] = Color3.fromRGB(255, 0, 0)

-- // StarterGui.Platform.Frame.ToggleLagOnOrOffTextButton.AspectRatio \\ --
UI["29"] = Instance.new("UIAspectRatioConstraint", UI["25"])
UI["29"]["AspectRatio"] = 0.88
UI["29"]["Name"] = [[AspectRatio]]

-- // StarterGui.Platform.Frame.SetPlatformHeight \\ --
UI["2a"] = Instance.new("TextButton", UI["2"])
UI["2a"]["TextWrapped"] = true
UI["2a"]["BorderSizePixel"] = 0
UI["2a"]["TextSize"] = 14
UI["2a"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["2a"]["TextScaled"] = true
UI["2a"]["BackgroundColor3"] = Color3.fromRGB(87, 0, 0)
UI["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["2a"]["AnchorPoint"] = Vector2.new(1, 0)
UI["2a"]["Size"] = UDim2.new(0.36798, 0, 0.64551, 0)
UI["2a"]["Name"] = [[SetPlatformHeight]]
UI["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2a"]["Text"] = [[Set Platform Height To Your Position]]
UI["2a"]["Position"] = UDim2.new(0.62322, 0, 0.3106, 0)

-- // StarterGui.Platform.Frame.SetPlatformHeight.UICorner \\ --
UI["2b"] = Instance.new("UICorner", UI["2a"])


-- // StarterGui.Platform.Frame.SetPlatformHeight.AspectRatio \\ --
UI["2c"] = Instance.new("UIAspectRatioConstraint", UI["2a"])
UI["2c"]["AspectRatio"] = 0.88
UI["2c"]["Name"] = [[AspectRatio]]

-- // StarterGui.Platform.Frame.SetPlatformHeight.UIStroke \\ --
UI["2d"] = Instance.new("UIStroke", UI["2a"])
UI["2d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["2d"]["Thickness"] = 3
UI["2d"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.SetPlatformHeight.UIStroke.UIGradient \\ --
UI["2e"] = Instance.new("UIGradient", UI["2d"])
UI["2e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Platform.Frame.SetPlatformHeight.UIStroke.UIGradient.LocalScript \\ --
UI["2f"] = Instance.new("LocalScript", UI["2e"])


-- // StarterGui.Platform.Frame.SetPlatformHeight.UIStroke \\ --
UI["30"] = Instance.new("UIStroke", UI["2a"])
UI["30"]["Thickness"] = 1.5
UI["30"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.SetPlatformHeight.UIStroke.UIGradient \\ --
UI["31"] = Instance.new("UIGradient", UI["30"])
UI["31"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Platform.Frame.SetPlatformHeight.UIStroke.UIGradient.LocalScript \\ --
UI["32"] = Instance.new("LocalScript", UI["31"])


-- // StarterGui.Platform.Frame.Slider \\ --
UI["33"] = Instance.new("Frame", UI["2"])
UI["33"]["ZIndex"] = 2
UI["33"]["BorderSizePixel"] = 5
UI["33"]["BackgroundColor3"] = Color3.fromRGB(53, 53, 53)
UI["33"]["ClipsDescendants"] = true
UI["33"]["Size"] = UDim2.new(0.29419, 0, 0.44502, 0)
UI["33"]["Position"] = UDim2.new(0.67239, 0, 0.30374, 0)
UI["33"]["BorderColor3"] = Color3.fromRGB(53, 53, 53)
UI["33"]["Name"] = [[Slider]]

-- // StarterGui.Platform.Frame.Slider.LocalScript \\ --
UI["34"] = Instance.new("LocalScript", UI["33"])


-- // StarterGui.Platform.Frame.Slider.Fill \\ --
UI["35"] = Instance.new("Frame", UI["33"])
UI["35"]["ZIndex"] = 2
UI["35"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["35"]["Size"] = UDim2.new(0.42268, 0, 1, 0)
UI["35"]["Position"] = UDim2.new(-0, 0, -0, 0)
UI["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["35"]["Name"] = [[Fill]]

-- // StarterGui.Platform.Frame.Slider.Fill.UICorner \\ --
UI["36"] = Instance.new("UICorner", UI["35"])


-- // StarterGui.Platform.Frame.Slider.Trigger \\ --
UI["37"] = Instance.new("TextButton", UI["33"])
UI["37"]["TextWrapped"] = true
UI["37"]["TextStrokeTransparency"] = 0
UI["37"]["BorderSizePixel"] = 0
UI["37"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255)
UI["37"]["TextSize"] = 34
UI["37"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["37"]["TextScaled"] = true
UI["37"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/HighwayGothic.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["37"]["ZIndex"] = 3
UI["37"]["Size"] = UDim2.new(1, 0, 1, 0)
UI["37"]["BackgroundTransparency"] = 1
UI["37"]["Name"] = [[Trigger]]
UI["37"]["BorderColor3"] = Color3.fromRGB(28, 43, 54)
UI["37"]["Text"] = [[40]]

-- // StarterGui.Platform.Frame.Slider.Trigger.UIStroke \\ --
UI["38"] = Instance.new("UIStroke", UI["37"])
UI["38"]["Thickness"] = 1.5
UI["38"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.Slider.Trigger.UIStroke.UIGradient \\ --
UI["39"] = Instance.new("UIGradient", UI["38"])
UI["39"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Platform.Frame.Slider.Trigger.UIStroke.UIGradient.LocalScript \\ --
UI["3a"] = Instance.new("LocalScript", UI["39"])


-- // StarterGui.Platform.Frame.Slider.OutputValue \\ --
UI["3b"] = Instance.new("NumberValue", UI["33"])
UI["3b"]["Name"] = [[OutputValue]]

-- // StarterGui.Platform.Frame.Slider.UICorner \\ --
UI["3c"] = Instance.new("UICorner", UI["33"])


-- // StarterGui.Platform.Frame.Slider.AspectRatio \\ --
UI["3d"] = Instance.new("UIAspectRatioConstraint", UI["33"])
UI["3d"]["AspectRatio"] = 1.98
UI["3d"]["Name"] = [[AspectRatio]]

-- // StarterGui.Platform.Frame.Slider.UIStroke \\ --
UI["3e"] = Instance.new("UIStroke", UI["33"])
UI["3e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["3e"]["Thickness"] = 3
UI["3e"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.Slider.UIStroke.UIGradient \\ --
UI["3f"] = Instance.new("UIGradient", UI["3e"])
UI["3f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(233, 21, 23)),ColorSequenceKeypoint.new(0.167, Color3.fromRGB(255, 166, 0)),ColorSequenceKeypoint.new(0.333, Color3.fromRGB(251, 236, 55)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(122, 196, 21)),ColorSequenceKeypoint.new(0.667, Color3.fromRGB(73, 126, 232)),ColorSequenceKeypoint.new(0.833, Color3.fromRGB(72, 48, 213)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(181, 89, 255))}

-- // StarterGui.Platform.Frame.Slider.UIStroke.UIGradient.LocalScript \\ --
UI["40"] = Instance.new("LocalScript", UI["3f"])


-- // StarterGui.Platform.Frame.TextLabel \\ --
UI["41"] = Instance.new("TextLabel", UI["2"])
UI["41"]["TextWrapped"] = true
UI["41"]["BorderSizePixel"] = 0
UI["41"]["TextScaled"] = true
UI["41"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28)
UI["41"]["TextSize"] = 14
UI["41"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["41"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["41"]["Size"] = UDim2.new(0.294, 0, 0.445, 0)
UI["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["41"]["Text"] = [[Transparency slider above]]
UI["41"]["Position"] = UDim2.new(0.67059, 0, 0.6881, 0)

-- // StarterGui.Platform.Frame.TextLabel.UICorner \\ --
UI["42"] = Instance.new("UICorner", UI["41"])


-- // StarterGui.Platform.Frame.TextLabel.AspectRatio \\ --
UI["43"] = Instance.new("UIAspectRatioConstraint", UI["41"])
UI["43"]["AspectRatio"] = 2.31
UI["43"]["Name"] = [[AspectRatio]]

-- // StarterGui.Platform.Frame.TextLabel.UIStroke \\ --
UI["44"] = Instance.new("UIStroke", UI["41"])
UI["44"]["Thickness"] = 1.5
UI["44"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient \\ --
UI["45"] = Instance.new("UIGradient", UI["44"])
UI["45"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 163, 233)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 163, 233))}

-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
UI["46"] = Instance.new("LocalScript", UI["45"])


-- // StarterGui.Platform.Frame.TextLabel.UIStroke \\ --
UI["47"] = Instance.new("UIStroke", UI["41"])
UI["47"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
UI["47"]["Thickness"] = 3
UI["47"]["Color"] = Color3.fromRGB(255, 255, 255)

-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient \\ --
UI["48"] = Instance.new("UIGradient", UI["47"])
UI["48"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 163, 233)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 163, 233))}

-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
UI["49"] = Instance.new("LocalScript", UI["48"])


-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_9()
local script = UI["9"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_9)
-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_c()
local script = UI["c"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_c)
-- // StarterGui.Platform.Frame.MainPlatformLocalScript \\ --
local function SCRIPT_d()
local script = UI["d"]
	if not game:IsLoaded() then
		print("waiting for game to load")
		game.Loaded:Wait()
	end
	print("game loaded")
	task.wait(2)
	
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
	
	--Extra variables
	local visible = true
	local platformheight = tonumber(char:WaitForChild("HumanoidRootPart").CFrame.Position.Y)
	local hipheight  = char.Humanoid.HipHeight
	
	local platformV1
	
	
	if not game.Workspace:FindFirstChild("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee") then
		platformV1 = Instance.new("Part")
		platformV1.Size = Vector3.new(9999, 9999, 9999)
		platformV1.Name = "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
		platformV1.Parent = game.Workspace
		platformV1.CastShadow = false
		platformV1.CanCollide = false
		platformV1.Transparency = 0
	else
		game.Workspace:FindFirstChild("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"):Destroy()
		platformV1 = Instance.new("Part")
		platformV1.Size = Vector3.new(9999, 9999, 9999)
		platformV1.Name = "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
		platformV1.Parent = game.Workspace
		platformV1.CastShadow = false
		platformV1.CanCollide = false
		platformV1.Transparency = 0
	end
	
	--Button variables
	local visiblebutton = script.Parent:WaitForChild("ToggleVisibleTextButton")
	local lagonoroffbutton = script.Parent:WaitForChild("ToggleLagOnOrOffTextButton")
	local deletebutton = script.Parent:WaitForChild("DeleteTextButton")
	local setheightbutton = script.Parent:WaitForChild("SetPlatformHeight")
	
	
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
	
	--Close the GUI
	deletebutton.Activated:Connect(function()
		platformV1:Destroy()
		script.Parent.Parent:Destroy()
	end)
	
	setheightbutton.Activated:Connect(function()
		if char.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
			platformheight = tonumber(char:WaitForChild("Torso").Position.Y)
		else
			platformheight = tonumber(char:FindFirstChild("LowerTorso").Position.Y - (char:FindFirstChild("LowerTorso").Size.Y / 2))
		end
		print("platform height was set to \"" .. tostring(hipheight) .. "\"")
	end)
	
	--MAKE SURE THIS IS AT THE END OR THE REST OF THE SCRIPT WONT RUN!!!
	--Checks if your RigType is R6 or R15 and then run the simulated lag function for that RigType
	while true do
		local hipheight  = char.Humanoid.HipHeight
		if char.Humanoid.RigType == Enum.HumanoidRigType.R6 then
			hipheight = (2 + (char:WaitForChild("HumanoidRootPart").Size.Y / 2))
		end
		if lagonoroff == true then
			platformV1.CanCollide = true
			platformV1.CFrame = CFrame.new(char:WaitForChild("HumanoidRootPart").CFrame.Position.X,((platformheight - hipheight) - (platformV1.Size.Y / 2)),char.HumanoidRootPart.CFrame.Position.Z)
		else
			platformV1.CanCollide = false
		end
		platformV1.Transparency = script.Parent:WaitForChild("Slider"):WaitForChild("OutputValue").Value
		task.wait()
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
task.spawn(SCRIPT_d)
-- // StarterGui.Platform.Frame.DragLocalScript \\ --
local function SCRIPT_e()
local script = UI["e"]
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
task.spawn(SCRIPT_e)
-- // StarterGui.Platform.Frame.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_12()
local script = UI["12"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_12)
-- // StarterGui.Platform.Frame.DeleteTextButton.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_18()
local script = UI["18"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_18)
-- // StarterGui.Platform.Frame.DeleteTextButton.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_1b()
local script = UI["1b"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_1b)
-- // StarterGui.Platform.Frame.ToggleVisibleTextButton.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_21()
local script = UI["21"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_21)
-- // StarterGui.Platform.Frame.ToggleVisibleTextButton.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_24()
local script = UI["24"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_24)
-- // StarterGui.Platform.Frame.SetPlatformHeight.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_2f()
local script = UI["2f"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_2f)
-- // StarterGui.Platform.Frame.SetPlatformHeight.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_32()
local script = UI["32"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_32)
-- // StarterGui.Platform.Frame.Slider.LocalScript \\ --
local function SCRIPT_34()
local script = UI["34"]
	local Mouse = game.Players.LocalPlayer:GetMouse()
	local Slider = script.Parent
	local Fill = script.Parent.Fill
	local Trigger = script.Parent.Trigger
	local OutputValue = script.Parent.OutputValue
	local MaxValue = 1
	local StartingValue = 0
	local decimalpoint = 10
	
	Fill.Size = UDim2.fromScale(OutputValue.Value,1)
	Trigger.Text = tostring((math.round((OutputValue.Value)*decimalpoint))/decimalpoint)
	
	local TweenService = game:GetService("TweenService")
	local TweenStyle = TweenInfo.new(0.25,Enum.EasingStyle.Exponential)
	
	function UpdateSlider()
		local output = math.clamp((Mouse.X-Slider.AbsolutePosition.X)/Slider.AbsoluteSize.X,0,1)
		local outputClamped = StartingValue + (output*(MaxValue-StartingValue))
		
		if OutputValue.Value ~= outputClamped then
			TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(output,1)}):Play()
		end
		
		OutputValue.Value = outputClamped
		Trigger.Text = tostring((math.round((OutputValue.Value)*decimalpoint))/decimalpoint)
	end
	
	local sliderActive = false
	
	function ActivateSlider()
		sliderActive = true
		while sliderActive do
			UpdateSlider()
			task.wait()
		end
	end
	
	Trigger.MouseButton1Down:Connect(ActivateSlider)
	
	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			sliderActive = false
		end
	end)
end
task.spawn(SCRIPT_34)
-- // StarterGui.Platform.Frame.Slider.Trigger.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_3a()
local script = UI["3a"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_3a)
-- // StarterGui.Platform.Frame.Slider.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_40()
local script = UI["40"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_40)
-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_46()
local script = UI["46"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_46)
-- // StarterGui.Platform.Frame.TextLabel.UIStroke.UIGradient.LocalScript \\ --
local function SCRIPT_49()
local script = UI["49"]
	local UIGradient = script.Parent
	local rs = game:GetService("RunService")
		rs.RenderStepped:Connect(function()
			UIGradient.Rotation += 2
		end)
end
task.spawn(SCRIPT_49)

return UI["1"], require;
