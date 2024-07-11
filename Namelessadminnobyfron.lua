wait(7)

--[[

╭━╮╱╭╮╱╱╱╱╱╱╱╱╭╮╱╱╱╱╱╱╱╱╱╱╭━━━╮╱╭╮            |

┃┃╰╮┃┃╱╱╱╱╱╱╱╱┃┃╱╱╱╱╱╱╱╱╱╱┃╭━╮┃╱┃┃            |

┃╭╮╰╯┣━━┳╮╭┳━━┫┃╭━━┳━━┳━━╮┃┃╱┃┣━╯┣╮╭┳┳━╮     | Welcome to the Nameless Admin source, feel free to take a look around.

┃┃╰╮┃┃╭╮┃╰╯┃┃━┫┃┃┃━┫━━┫━━┫┃╰━╯┃╭╮┃╰╯┣┫╭╮╮    | Enjoy.

┃┃╱┃┃┃╭╮┃┃┃┃┃━┫╰┫┃━╋━━┣━━┃┃╭━╮┃╰╯┃┃┃┃┃┃┃┃    |

╰╯╱╰━┻╯╰┻┻┻┻━━┻━┻━━┻━━┻━━╯╰╯╱╰┻━━┻┻┻┻┻╯╰╯    |

--]]



 -- Waits until game is loaded

 local game = game

 local GetService = game.GetService

 if (not game.IsLoaded(game)) then

	 local Loaded = game.Loaded

	 Loaded.Wait(Loaded);

	 wait(1.5)

 end

 

 -- Notification library

 local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/notificationtest"))();

 local Notify = Notification.Notify;

 

 -- Custom file functions checker checker

 local CustomFunctionSupport = isfile and isfolder and writefile and readfile and listfiles

 local FileSupport = isfile and isfolder and writefile and readfile

 

 -- Creates folder & files for Prefix & Plugins

 if FileSupport then

 if not isfolder('Nameless-Admin') then

 makefolder('Nameless-Admin')

 end

 

 if not isfolder('Nameless-Admin/Plugins') then

	 makefolder('Nameless-Admin/Plugins')

 end

 

 if not isfile("Nameless-Admin/Prefix.txt") then

 writefile("Nameless-Admin/Prefix.txt", ';')

 else

 end

 end

 

 -- [[ PREFIX AND OTHER STUFF. ]] -- 

 local opt = {

	 prefix = readfile("Nameless-Admin/Prefix.txt", ';'), -- If player's executor has the custom file function support it reads the prefix file to get prefix

	 tupleSeparator = ',',	-- ;ff me,others,all | ;ff me/others/all

	 ui = {					-- never did anything with this

		 

	 },

	 keybinds = {			-- never did anything with this

		 

	 },

 }

 

 -- [[ Version ]] -- 

 currentversion = 1.13

 

 --[[ VARIABLES ]]--

 PlaceId, JobId = game.PlaceId, game.JobId

 local Players = game:GetService("Players")

 local UserInputService = game:GetService("UserInputService")

 local TweenService = game:GetService("TweenService")

 local RunService = game:GetService("RunService")

 local TeleportService = game:GetService("TeleportService")

 local RunService2 = game:FindService("RunService")

 local StarterGui = game:GetService("StarterGui")

 local SoundService = game:GetService("SoundService")

 sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop

 local Player = game.Players.LocalPlayer

 local IYLOADED = false -- This is used for the ;iy command that executes infinite yield commands using this admin command script (BTW)

 local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid") or false

 local Character = game.Players.LocalPlayer.Character

 local Clicked = true

 _G.Spam = false

 --[[ FOR LOOP COMMANDS ]]--

 view = false

 anniblockspam = false

 control = false

 FakeLag = false

 Loopvoid = false

 Loopkill = false

 Loopbring = false

 Loopbanish = false

 Loopvoid = false

 Loopcuff = false

 loopgrab = false

 Loopstand = false

 Looptornado = false

 Loopmute = false

 Loopglitch = false

 Watch = false

 local Admin = {}

 

 -- [[ HAT ORBIT (PATCHED IN MOST GAMES) ]]

 local Offset = 10

 local Rotation = 0

 local Speed = 1

 local Height = 2

 

 local EditingPos = false

 

 local Power = 50000

 local Damping = 500

 

 local Mode = 1

 

 local NormalSpin = true

 

 

 --[[ Some more variables ]]--

 

 local localPlayer = Players.LocalPlayer

 local LocalPlayer = Players.LocalPlayer

 local character = localPlayer.Character

 local mouse = localPlayer:GetMouse()

 local camera = workspace.CurrentCamera

 local camtype = camera.CameraType

 local Commands, Aliases = {}, {}

 player, plr, lp = localPlayer, localPlayer, localPlayer, localPlayer

 

 localPlayer.CharacterAdded:Connect(function(c)

	 character = c

 end)

 

 local bringc = {}

 

 --[[ COMMAND FUNCTIONS ]]--

 commandcount = 0

 cmd = {}

 cmd.add = function(...)

	 local vars = {...}

	 local aliases, info, func = vars[1], vars[2], vars[3]

	 for i, cmdName in pairs(aliases) do

		 if i == 1 then

			 Commands[cmdName:lower()] = {func, info}

		 else

			 Aliases[cmdName:lower()] = {func, info}

		 end

	 end

	 commandcount = commandcount + 1

 end

 

 cmd.run = function(args)

	 local caller, arguments = args[1], args; table.remove(args, 1);

	 local success, msg = pcall(function()

		 if Commands[caller:lower()] then

			 Commands[caller:lower()][1](unpack(arguments))

		 elseif Aliases[caller:lower()] then

			 Aliases[caller:lower()][1](unpack(arguments))

		 end

	 end)

	 if not success then

	 end

 end

 

 --[[ LIBRARY FUNCTIONS ]]--

 lib = {}

 lib.wrap = function(f)

	 return coroutine.wrap(f)()

 end

 

 wrap = lib.wrap

 

 local wait = function(int)

	 if not int then int = 0 end

	 local t = tick()

	 repeat

		 RunService.Heartbeat:Wait(0)

	 until (tick() - t) >= int

	 return (tick() - t), t

 end

 

 -- [[ Shadow ]] --

 

 local uhhhh = Instance.new("ScreenGui")

 local lalala = Instance.new("Frame")

 local UIGradient = Instance.new("UIGradient")

 

 uhhhh.Name = "boomb"

 uhhhh.Parent = game.Players.LocalPlayer.PlayerGui

 uhhhh.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

 uhhhh.ResetOnSpawn = false

 

 lalala.Parent = uhhhh

 lalala.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

 lalala.BackgroundTransparency = 1

 lalala.Size = UDim2.new(1, 904, 1, 904)

 

 UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(5, 0, 8))}

 UIGradient.Rotation = 90

 UIGradient.Parent = lalala

 

 local StarterGui = uhhhh

 StarterGui.IgnoreGuiInset = true

 

	 function r15(plr)

		 if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then

			 return true

		 end

	 end

	 

	 function getRoot(character)

	 local root = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') or game.Players.LocalPlayer.Character:FindFirstChild('Torso') or game.Players.LocalPlayer.Character:FindFirstChild('UpperTorso')

	 return root

 end

 

 -- [[ FUNCTION TO GET A PLAYER ]] --

 local getPlr = function(Name)

	 if Name:lower() == "random" then

		 return Players:GetPlayers()[math.random(#Players:GetPlayers())]

	 else

		 Name = Name:lower():gsub("%s", "")

		 for _, x in next, Players:GetPlayers() do

			 if x.Name:lower():match(Name) then

				 return x

			 elseif x.DisplayName:lower():match("^" .. Name) then

				 return x

			 end

		 end

	 end

 end

 

 -- [[ MORE VARIABLES ]] --

 plr = game.Players.LocalPlayer

 COREGUI = game:GetService("CoreGui")

 speaker = game.Players.LocalPlayer

 char = plr.Character

 RunService = game:GetService("RunService")

 

 game:GetService('RunService').Stepped:connect(function()

 if anniblockspam then

 game.workspace.Tools.Chest_Invisibility_Cloak.Part.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)

 

 if game.Players.LocalPlayer.Backpack:FindFirstChild("InvisibilityCloak") then

 game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.InvisibilityCloak)

 end

 

 for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do

 if (v:IsA("Tool")) then

 v.Handle.Mesh:Destroy()

 end

 end

 

 for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do

 if (v:IsA("Tool")) then

 v.Parent = workspace

 end

 end

 

 end

 end)

 

 function mobilefly(speed)

	 local controlModule = require(game.Players.LocalPlayer.PlayerScripts:WaitForChild('PlayerModule'):WaitForChild("ControlModule"))

	 local bv = Instance.new("BodyVelocity")

	 bv.Name = "VelocityHandler"

	 bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart

	 bv.MaxForce = Vector3.new(0,0,0)

	 bv.Velocity = Vector3.new(0,0,0)

	 

	 local bg = Instance.new("BodyGyro")

	 bg.Name = "GyroHandler"

	 bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart

	 bg.MaxTorque = Vector3.new(9e9,9e9,9e9)

	 bg.P = 1000

	 bg.D = 50

	 

	 local Signal1

	 Signal1 = game.Players.LocalPlayer.CharacterAdded:Connect(function(NewChar)

	 local bv = Instance.new("BodyVelocity")

	 bv.Name = "VelocityHandler"

	 bv.Parent = NewChar:WaitForChild("Humanoid").RootPart

	 bv.MaxForce = Vector3.new(0,0,0)

	 bv.Velocity = Vector3.new(0,0,0)

	 

	 local bg = Instance.new("BodyGyro")

	 bg.Name = "GyroHandler"

	 bg.Parent = NewChar:WaitForChild("Humanoid").HumanoidRootPart

	 bg.MaxTorque = Vector3.new(9e9,9e9,9e9)

	 bg.P = 1000

	 bg.D = 50

	 end)

	 

	 local camera = game.Workspace.CurrentCamera

	 

	 local Signal2

	 Signal2 = game:GetService"RunService".RenderStepped:Connect(function()

	 if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then

	 

	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)

	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)

	 game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true

	 

	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = camera.CoordinateFrame

	 local direction = controlModule:GetMoveVector()

	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()

	 if direction.X > 0 then

	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + camera.CFrame.RightVector*(direction.X*speed)

	 end

	 if direction.X < 0 then

	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + camera.CFrame.RightVector*(direction.X*speed)

	 end

	 if direction.Z > 0 then

	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - camera.CFrame.LookVector*(direction.Z*speed)

	 end

	 if direction.Z < 0 then

	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - camera.CFrame.LookVector*(direction.Z*speed)

	 end

	 end

	 end)

 end

 

 function unmobilefly()

	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()

	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()

	 game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false

	 Signal1:Disconnect()

	 Signal2:Disconnect()

 end

 

 function x(v)

	 if v then

		 for _,i in pairs(workspace:GetDescendants()) do

			 if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then

				 i.LocalTransparencyModifier = 0.5

			 end

		 end

	 else

		 for _,i in pairs(workspace:GetDescendants()) do

			 if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then

				 i.LocalTransparencyModifier = 0

			 end

		 end

	 end

 end

 

 local function getChar()

	 return game.Players.LocalPlayer.Character

 end

 

 local function getBp()

	 return game.Players.LocalPlayer.Backpack

 end

 

 local cmdlp = game.Players.LocalPlayer

 

 plr = cmdlp

 

 workspace = game.workspace

 

 cmdm = plr:GetMouse()

 

 function sFLY(vfly)

	 FLYING = false

	 speedofthefly = 10

	 speedofthevfly = 10

	 while not cmdlp or not cmdlp.Character or not cmdlp.Character:FindFirstChild('HumanoidRootPart') or not cmdlp.Character:FindFirstChild('Humanoid') or not cmdm do

		  wait()

	 end 

	 local T = cmdlp.Character.HumanoidRootPart

	 local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}

	 local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}

	 local SPEED = 0

	 local function FLY()

		 FLYING = true

		 local BG = Instance.new('BodyGyro', T)

		 local BV = Instance.new('BodyVelocity', T)

		 BG.P = 9e4

		 BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)

		 BG.cframe = T.CFrame

		 BV.velocity = Vector3.new(0, 0, 0)

		 BV.maxForce = Vector3.new(9e9, 9e9, 9e9)

		 spawn(function()

			 while FLYING do

				 if not vfly then

					 cmdlp.Character:FindFirstChild("Humanoid").PlatformStand = true

				 end

				 if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then

					 SPEED = 50

				 elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then

					 SPEED = 0

				 end

				 if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then

					 BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED

					 lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}

				 elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then

					 BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED

				 else

					 BV.velocity = Vector3.new(0, 0, 0)

				 end

				 BG.cframe = workspace.CurrentCamera.CoordinateFrame

				 wait()

			 end

			 CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}

			 lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}

			 SPEED = 0

			 BG:destroy()

			 BV:destroy()

			 cmdlp.Character.Humanoid.PlatformStand = false

		 end)

	 end

	 cmdm.KeyDown:connect(function(KEY)

		 if KEY:lower() == 'w' then

			 if vfly then

				 CONTROL.F = speedofthevfly

			 else

				 CONTROL.F = speedofthefly

			 end

		 elseif KEY:lower() == 's' then

			 if vfly then

				 CONTROL.B = - speedofthevfly

			 else

				 CONTROL.B = - speedofthefly

			 end

		 elseif KEY:lower() == 'a' then

			 if vfly then

				 CONTROL.L = - speedofthevfly

			 else

				 CONTROL.L = - speedofthefly

			 end

		 elseif KEY:lower() == 'd' then

			 if vfly then

				 CONTROL.R = speedofthevfly

			 else

				 CONTROL.R = speedofthefly

			 end

		 elseif KEY:lower() == 'y' then

			 if vfly then

				 CONTROL.Q = speedofthevfly*2

			 else

				 CONTROL.Q = speedofthefly*2

			 end

		 elseif KEY:lower() == 't' then

			 if vfly then

				 CONTROL.E = -speedofthevfly*2

			 else

				 CONTROL.E = -speedofthefly*2

			 end

		 end

	 end)

	 cmdm.KeyUp:connect(function(KEY)

		 if KEY:lower() == 'w' then

			 CONTROL.F = 0

		 elseif KEY:lower() == 's' then

			 CONTROL.B = 0

		 elseif KEY:lower() == 'a' then

			 CONTROL.L = 0

		 elseif KEY:lower() == 'd' then

			 CONTROL.R = 0

		 elseif KEY:lower() == 'y' then

			 CONTROL.Q = 0

		 elseif KEY:lower() == 't' then

			 CONTROL.E = 0

		 end

	 end)

	 FLY()

 end

 

 

 local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")

 

 local function attachTool(tool,cf)

	 for i,v in pairs(tool:GetDescendants()) do

		 if not (v:IsA("BasePart") or v:IsA("Mesh") or v:IsA("SpecialMesh")) then

			 v:Destroy()

		 end

	 end

	 wait()

 game.Players.LocalPlayer.Character.Humanoid.Name = 1

 local l = game.Players.LocalPlayer.Character["1"]:Clone()

 l.Parent = game.Players.LocalPlayer.Character

 l.Name = "Humanoid"

			 

 game.Players.LocalPlayer.Character["1"]:Destroy()

 game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character

 game.Players.LocalPlayer.Character.Animate.Disabled = true

 wait()

 game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"

 

 tool.Parent = getChar()

 end

 

 local nc = false

 local ncLoop

 ncLoop = game:GetService("RunService").Stepped:Connect(function()

	 if nc and getChar() ~= nil then

		 for _, v in pairs(getChar():GetDescendants()) do

			 if v:IsA("BasePart") and v.CanCollide == true then

				 v.CanCollide = false

			 end

		 end

	 end

 end)

 

 local netsleepTargets = {}

 local nsLoop

 nsLoop = game:GetService("RunService").Stepped:Connect(function()

	 if #netsleepTargets == 0 then return end

	 for i,v in pairs(netsleepTargets) do

		 if v.Character then

			 for i,v in pairs(v.Character:GetChildren()) do

				 if v:IsA("BasePart") == false and v:IsA("Accessory") == false then continue end

				 if v:IsA("BasePart") then

					 sethiddenproperty(v,"NetworkIsSleeping",true)

				 elseif v:IsA("Accessory") and v:FindFirstChild("Handle") then

					 sethiddenproperty(v.Handle,"NetworkIsSleeping",true)

				 end

			 end

		 end

	 end

 end)

 

 function getTorso(x)

	 x = x or game.Players.LocalPlayer.Character

	 return x:FindFirstChild("Torso") or x:FindFirstChild("UpperTorso") or x:FindFirstChild("LowerTorso") or x:FindFirstChild("HumanoidRootPart")

 end

 

 function getRoot(char)

	 local rootPart = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') or game.Players.LocalPlayer.Character:FindFirstChild('Torso') or game.Players.LocalPlayer.Character:FindFirstChild('UpperTorso')

	 return rootPart

 end

 

 local lp = game:GetService("Players").LocalPlayer

 

 

 -- [[ LIB FUNCTIONS ]] --

 lib.lock = function(instance, par)

	 locks[instance] = true

	 instance.Parent = par or instance.Parent

	 instance.Name = "RightGrip"

 end

 lock = lib.lock

 locks = {}

 

 lib.find = function(t, v)	-- mmmmmm

	 for i, e in pairs(t) do

		 if i == v or e == v then

			 return i

		 end

	 end

	 return nil

 end

 

 lib.parseText = function(text, watch)

	 local parsed = {}

	 if not text then return nil end

	 for arg in text:gmatch("[^" .. watch .. "]+") do

		 arg = arg:gsub("-", "%%-")

		 local pos = text:find(arg)

		 arg = arg:gsub("%%", "")

		 if pos then

			 local find = text:sub(pos - opt.prefix:len(), pos - 1)

			 if (find == opt.prefix and watch == opt.prefix) or watch ~= opt.prefix then

				 table.insert(parsed, arg)

			 end

		 else

			 table.insert(parsed, nil)

		 end

	 end

	 return parsed

 end

 

 lib.parseCommand = function(text)

	 wrap(function()

		 local commands = lib.parseText(text, opt.prefix)

		 for _, parsed in pairs(commands) do

			 local args = {}

			 for arg in parsed:gmatch("[^ ]+") do

				 table.insert(args, arg)

			 end

			 cmd.run(args)

		 end

	 end)

 end

 

 local connections = {}

 

 lib.connect = function(name, connection)	-- no :(

	 connections[name .. tostring(math.random(1000000, 9999999))] = connection

	 return connection

 end

 

 lib.disconnect = function(name)

	 for title, connection in pairs(connections) do

		 if title:find(name) == 1 then

			 connection:Disconnect()

		 end

	 end

 end

 

 m = math			-- prepare for annoying and unnecessary tool grip math

 rad = m.rad

 clamp = m.clamp

 sin = m.sin

 tan = m.tan

 cos = m.cos

 

 --[[ PLAYER FUNCTIONS ]]--

 argument = {}

 argument.getPlayers = function(str)

	 local playerNames, players = lib.parseText(str, opt.tupleSeparator), {}

	 for _, arg in pairs(playerNames or {"me"}) do

		 arg = arg:lower()

		 local playerList = Players:GetPlayers()

		 if arg == "me" or arg == nil then

			 table.insert(players, localPlayer)

			 

		 elseif arg == "all" then

			 for _, plr in pairs(playerList) do

				 table.insert(players, plr)

			 end

			 

		 elseif arg == "others" then

			 for _, plr in pairs(playerList) do

				 if plr ~= localPlayer then

					 table.insert(players, plr)

				 end

			 end

			 

		 elseif arg == "random" then

			 table.insert(players, playerList[math.random(1, #playerList)])

			 

		 elseif arg:find("%%") == 1 then

			 local teamName = arg:sub(2)

			 for _, plr in pairs(playerList) do

				 if tostring(plr.Team):lower():find(teamName) == 1 then

					 table.insert(players, plr)

				 end

			 end

			 

		 else

			 for _, plr in pairs(playerList) do

				 if plr.Name:lower():find(arg) == 1 or (plr.DisplayName and plr.DisplayName:lower():find(arg) == 1) or (tostring(plr.UserId):lower():find(arg) == 1) then

					 table.insert(players, plr)

				 end

			 end

		 end

	 end

	 return players

 end

 



 wait(0.3)

 --[[ COMMANDS ]]--

 cmd.add({"script", "ls", "s", "run"}, {"script <source> (ls, s, run)", "Run the code requested"}, function(source)

	 loadstring(game:HttpGet(source))()

 end)

 

 cmd.add({"executor"}, {"executor", "Very simple executor"}, function()

	 loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/executor"))()

 end)

 

 cmd.add({"scripthub"}, {"scripthub", "Thanks to scriptblox api"}, function()

	 loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/ScriptHub"))()

 end)

 

 cmd.add({"stand"}, {"stand <player>", "Makes a player your stand"}, function(...)

		   Username = (...)

  

 local target = getPlr(Username)

 local THumanoidPart

 local plrtorso

 local TargetCharacter = target.Character

	if TargetCharacter:FindFirstChild("Torso") then

			plrtorso = TargetCharacter.Torso

		elseif TargetCharacter:FindFirstChild("UpperTorso") then

			plrtorso = TargetCharacter.UpperTorso

		end

		 local old = getChar().HumanoidRootPart.CFrame

		 local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")

		 if target == nil or tool == nil then return end

		 local attWeld = attachTool(tool,CFrame.new(0,0,0))

		 attachTool(tool,CFrame.new(0,0,0.2) * CFrame.Angles(math.rad(-90),0,0))

			tool.Grip = plrtorso.CFrame

	 wait(0.07)

		 tool.Grip = CFrame.new(0, 3, -1) 

		 firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,0)

		 firetouchinterest(target.Character.Humanoid.RootPart,tool.Handle,1)

	  wait(1.3)

 end)

 

 cmd.add({"valk"}, {"valk", "Only works on dollhouse"}, function()

 repeat game:GetService("RunService").Stepped:wait()

 until game:IsLoaded() and game:GetService("Players").LocalPlayer

 

 pcall(function()

	local plr = game:GetService("Players").LocalPlayer

	local giver = workspace:WaitForChild("Valkyrie Helm giver")

 

	local head = plr.Character:WaitForChild("Head")

	firetouchinterest(head, giver, 0)

 

	plr.CharacterAdded:Connect(function(char)

		head = char:WaitForChild("Head")

		firetouchinterest(head, giver, 0)

	end)

 end)

 end)

 

 cmd.add({"httpget", "hl", "get"}, {"httpget <url> (hl, get)", "Run the contents of a given URL"}, function(url)

	 loadstring(game:HttpGet(url, true))()

 end)

 

 cmd.add({"resizechat", "rc"}, {"resizechat (rc)", "Makes chat resizable and draggable"}, function()

 require(game:GetService("Chat").ClientChatModules.ChatSettings).WindowResizable = true

 require(game:GetService("Chat").ClientChatModules.ChatSettings).WindowDraggable = true

 end)

 

 alreadyantilag = false

 cmd.add({"lag"}, {"lag <player>", "Chat lag"}, function()

	 

	 local Message = "a" 

	 local Unicode = " "

	 Message = Message .. Unicode:rep(200 - #Message)

 

	 local SayMessageRequest = game:GetService("ReplicatedStorage"):FindFirstChild("SayMessageRequest", true)

	 

		 for i = 1, 7 do

			 SayMessageRequest:FireServer(Message, "All")

		 end

 

		 if alreadyantilag == false then

		 local Players = game:GetService("Players")

		 

		 local Player = Players.LocalPlayer

		 local PlayerGui = Player.PlayerGui

		 

		 local Chat = PlayerGui:FindFirstChild("Chat") 

		 local MessageDisplay = Chat and Chat:FindFirstChild("Frame_MessageLogDisplay", true)

		 local Scroller = MessageDisplay and MessageDisplay:FindFirstChild("Scroller")

		 

		 local Gsub = string.gsub

		 local Lower = string.lower

		 

		 if not Scroller then return end

		 

		 for _, x in next, Scroller:GetChildren() do

			 local MessageTextLabel = x:FindFirstChildWhichIsA("TextLabel")

				 

			 if MessageTextLabel then

				 local Message = Gsub(MessageTextLabel.Text, "^%s+", "")

				 

				 if Message:match(" ") then

					 x:Destroy()

				 end

			 end

		 end

		 

		 local ChatAdded = Scroller.ChildAdded:Connect(function(x)

			 local MessageTextLabel = x:FindFirstChildWhichIsA("TextLabel")

			 local SenderTextButton = MessageTextLabel and MessageTextLabel:FindFirstChildWhichIsA("TextButton")

			 if MessageTextLabel and SenderTextButton then

				 repeat task.wait() until not MessageTextLabel.Text:match("__+")

				 local Message = Gsub(MessageTextLabel.Text, "^%s+", "")

				 

				 if Message:match(" ") then

					 x:Destroy()

				 end

			 end

		 end)

		 alreadyantilag = true

	 else

	 end

 end)

 

 cmd.add({"plugins"}, {"plugins", "Check what kind of plugins you have, add plugins using a gui, delete a plugin."}, function()

	 loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/NamelessAdminPlugin"))();

 end)

 

 cmd.add({"prefix"}, {"prefix <prefix>", "Changes the admin prefix"}, function(...)

 PrefixChange = (...)

 

 if PrefixChange == nil then

 Notify({

 Description = "Please enter a valid prefix";

 Title = "Nameless Admin";

 Duration = 5;

 

 });

 elseif PrefixChange == "p" or PrefixChange == "[" or PrefixChange == "P" then

	 Notify({

		 Description = "idk why but this prefix breaks changing the prefix so pick smthing else alr?";

		 Title = "Nameless Admin";

		 Duration = 5;

		 

		 });

	 else

 opt.prefix = PrefixChange

 Notify({

 Description = "Prefix set to " .. PrefixChange .. "";

 Title = "Nameless Admin";

 Duration = 5;

 

 });

 end

 end)

 

 

 cmd.add({"saveprefix"}, {"saveprefix <prefix>", "Saves the prefix to what u want"}, function(...)

 PrefixChange = (...)

 

 if PrefixChange == nil then

 Notify({

 Description = "Please enter a valid prefix";

 Title = "Nameless Admin";

 Duration = 5;

 

 });

 elseif PrefixChange == "p" or PrefixChange == "[" or PrefixChange == "P" then

	 Notify({

		 Description = "idk why but this prefix breaks changing the prefix so pick smthing else alr?";

		 Title = "Nameless Admin";

		 Duration = 5;

		 

		 });

	 else

 writefile("Nameless-Admin\\Prefix.txt", PrefixChange)

 opt.prefix = PrefixChange

 Notify({

 Description = "Prefix saved to '" .. PrefixChange .. "'";

 Title = "Nameless Admin";

 Duration = 5;

 

 });

 end

 end)

 

 --[ UTILITY ]--

 

 cmd.add({"chatlogs", "clogs"}, {"chatlogs (clogs)", "Open the chat logs"}, function()

	 gui.chatlogs()

 end)

 

 cmd.add({"gotocampos", "tocampos", "tcp"}, {"gotocampos (tocampos, tcp)", "Teleports you to your camera position works with free cam but freezes you"}, function()

 local player = game.Players.LocalPlayer

 local UserInputService = game:GetService("UserInputService")

  local function teleportPlayer()

	 local character = player.Character or player.CharacterAdded:wait(1)

	 local camera = game.Workspace.CurrentCamera

	 local cameraPosition = camera.CFrame.Position

	 character:SetPrimaryPartCFrame(CFrame.new(cameraPosition))

 end

		 local camera = game.Workspace.CurrentCamera

		 repeat wait() until camera.CFrame ~= CFrame.new()

 

		 teleportPlayer()

 end)

 

 cmd.add({"kanye"}, {"kanye", "Random kanye quote"}, function()

	local check = "https://api.kanye.rest/"

		 local final = game:HttpGet(check)

		 local final2 = string.gsub(final,'"quote"',"")

		 local final3 = string.gsub(final2,"[%{%:%}]","")

		  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(final3.." - Kanye West", 'All')

 end)

 

 -- [[ HAT ORBIT COMMANDS ]] --

 cmd.add({"hatorbit", "ho"}, {"hatorbit (ho)", "Hat orbit"}, function()

	-- [[ patched theres no point in using it ]] --

 wait();

 

 Notify({

 Description = "Hat orbit loaded, if you wanna orbit other people type in the chat .orbit playername";

 Title = "Nameless Admin";

 Duration = 10;

 

 });

	 local LC = game.Players.LocalPlayer

 local Name = LC.Name

 local Char = LC.Character

 

 local Humanoid = Char:FindFirstChildWhichIsA("Humanoid")

 local Root = Humanoid.RootPart

 

 local Accessories = Humanoid:GetAccessories()

 

 local Target = Char

 local TargetPos = Target.Humanoid.RootPart.Position

 

		 function findName(pname)

			 for i, v in ipairs(game.Players:GetPlayers()) do

				 if pname then

					 if string.match(v.Name:lower(), pname:lower()) or string.match(v.Character.Humanoid.DisplayName:lower(), pname:lower()) then

						 return v.Name

					 end

				 else

				 end

			 end

		 end

	 

		 function findChar(pname)

			 return game.Players:FindFirstChild(findName(pname)).Character

		 end

	 

		 local hats = {}

	 

		 if Target then

			 -- Loop through each hat in the target player's character

			 local character = Target

			 for _, hat in ipairs(character:GetChildren()) do

				 if hat:IsA("Accessory") then

					 hats[#hats+1] = hat

				 end

			 end

		 end

	 

		 local hatCount = #hats

		 if hatCount > 0 then

			 local angle = math.pi * 2 / hatCount

			 -- Loop through each hat again to add bodyposition and move hats

			 for i, hat in ipairs(hats) do

				 -- Add bodyposition to the handle and make it massless

				 local handle = hat.Handle

				 handle.AccessoryWeld:Remove()

	 

				 if handle then

					 local bodyPosition = Instance.new("BodyPosition", handle)

					 bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

					 bodyPosition.P = Power

					 bodyPosition.D = Damping

	 

					 local bodyGyro = Instance.new("BodyGyro", handle)

					 bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)

					 bodyGyro.P = Power

					 bodyGyro.D = Damping

	 

					 -- Calculate position based on angle and Offset

					 local x = math.sin(Rotation + angle * (i-1)) * Offset

					 local z = math.cos(Rotation + angle * (i-1)) * Offset

	 

					 -- Set position of bodyposition

					 bodyPosition.Position = TargetPos + Vector3.new(x, Height, z)

				 end

			 end

	 

			 -- Rotate hats around target player

			 local function myCoroutine()

				 while wait(-9e999) do

					 Rotation = Rotation + (Speed / 20)

					 if Rotation >= math.pi * 2 then

						 Rotation = 0

					 end

	 

					 for i, hat in ipairs(hats) do

						 local handle = hat.Handle

						 local x = math.sin(Rotation + angle * (i-1)) * Offset

						 local z = math.cos(Rotation + angle * (i-1)) * Offset

	 

						 handle.BodyPosition.P = Power

						 handle.Velocity = Vector3.new(0, 5, 0)

						 handle.Massless = true

						 handle.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)

	 

						 handle.BodyGyro.CFrame = CFrame.lookAt(handle.Position + Vector3.new(0, handle.Position.Y, 0), Root.Position)

	 

						 if NormalSpin == true then

							 handle.BodyPosition.Position = TargetPos + Vector3.new(x + Target.Humanoid.MoveDirection.X, Height, z + Target.Humanoid.MoveDirection.Z)

						 end

	 

						 if EditingPos == false then

							 TargetPos = Target.Humanoid.RootPart.Position

						 end

					 end

				 end

			 end

	 

			 local myWrappedCoroutine = coroutine.wrap(myCoroutine)

	 

			 myWrappedCoroutine()

		 end

	 

		 function Mode2()

			 if Mode == 2 then

				 local Angle = math.pi * 2 / #hats -- number of hats in the circle

	 

				 function Loop()

					 if Mode == 2 then

						 -- Get the orientation of the root part

						 local RootOrientation = Target.Humanoid.RootPart.CFrame - Target.Humanoid.RootPart.Position

						 local RootRotation = RootOrientation

	 

						 for i, Hat in ipairs(hats) do

							 local HatRotation = RootRotation.Y + Angle * (i - 1) + Speed * tick()

							 local x = math.sin(HatRotation) * Offset

							 local z = math.cos(HatRotation) * Offset

	 

							 local HatPos = TargetPos + RootOrientation * Vector3.new(x, z, -Height)

							 Hat.Handle.BodyPosition.Position = HatPos

						 end

	 

						 wait()

						 Loop()

					 end

				 end

	 

				 Loop()

	 

				 for i, Hat in ipairs(hats) do

					 local Handle = Hat.Handle

	 

					 Hat.Handle.BodyPosition.Position = TargetPos

				 end

			 end

		 end

	 

	 

		 function Mode3()

			 if Mode == 3 then

				 for i = 1, #Accessories do

					 Accessories[i].Handle.BodyPosition.Position = TargetPos + Vector3.new(0, Height, 0)

					 wait(.1)

				 end

				 wait()

				 Mode3()

			 end

		 end

	 

		 function Mode4 ()

			 if Mode == 4 then

				 if not LC:GetMouse().Target then else

					 TargetPos = LC:GetMouse().Hit.Position

				 end

				 wait(-9e999)

				 Mode4()

			 end

		 end

	 

		 function Mode5 ()

			 local spiralPitch = 0

			 local spiralAngle = 0

	 

			 function Loop ()

				 if Mode == 5 then

					 spiralAngle = spiralAngle + Speed / 300

					 if spiralAngle >= math.pi * 10 then

						 spiralAngle = 0

					 end

	 

					 for i, hat in ipairs(hats) do

						 local handle = hat.Handle

						 if handle then

							 local x = math.sin(spiralAngle + i * spiralPitch) * (i * Offset / 8)

							 local y = i * (Height / 3)

							 local z = math.cos(spiralAngle + i * spiralPitch) * (i * Offset / 8)

							 handle.BodyPosition.Position = TargetPos - Vector3.new(0, 2, 0) + Vector3.new(x, y, z)

						 end

					 end

				 end

				 spiralPitch += Speed / 70

				 wait(-9e999)

				 Loop()

			 end

	 

			 Loop()

		 end

	 

		 function Mode6 ()

			 local stack1 = {}

			 local stack2 = {}

	 

			 for i = 1, #Accessories do

				 if i <= #Accessories / 2 then

					 stack1[#stack1 + 1] = Accessories[i]

				 else

					 stack2[#stack2 + 1] = Accessories[i]

				 end

			 end

	 

			 function Loop()

				 if Mode == 6 then

					 local angle = tick() * Speed

					 local x = math.sin(angle) * Offset

					 local z = math.cos(angle) * Offset

	 

					 for i, v in ipairs(stack1) do

						 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, i+Height,-z)

					 end

	 

					 for i, v in ipairs(stack2) do

						 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(-x, i+Height,z)

					 end

					 wait()

					 Loop()

				 end

			 end

	 

			 Loop()

		 end

	 

		 function Mode7()

			 local stack1 = {}

			 local stack2 = {}

			 local stack3 = {}

	 

			 for i = 1, #Accessories do

				 if i < #Accessories / 3 then

					 stack1[#stack1 + 1] = Accessories[i]

				 elseif i < #Accessories / 3 * 2 or i == #Accessories then

					 stack2[#stack2 + 1] = Accessories[i]

				 else

					 stack3[#stack3 + 1] = Accessories[i]

				 end

			 end

	 

	 

			 function Loop()

				 if Mode == 7 then

					 local angle = tick() * Speed

					 local x = math.sin(angle) * Offset

					 local z = math.cos(angle) * Offset

	 

					 for i, v in ipairs(stack1) do

						 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, i+Height, -z)

					 end

	 

					 for i, v in ipairs(stack2) do

						 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, i+Height, z)

					 end

	 

					 for i, v in ipairs(stack3) do

						 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(-x, i+Height, -z)

					 end

					 wait()

					 Loop()

				 end

			 end

	 

			 Loop()

		 end

	 

		 function Mode8()

			 if Mode == 8 then

				 local forward = workspace.CurrentCamera.CFrame.LookVector

				 local right = workspace.CurrentCamera.CFrame.RightVector

				 local up = workspace.CurrentCamera.CFrame.UpVector

				 local angle = math.pi * 2 / #hats * tick()

	 

				 for i, hat in ipairs(hats) do

					 local handle = hat.Handle

					 local x = right * (math.sin(angle * (i-1)) * Offset)

					 local y = up * (math.cos(angle * (i-1)) * Offset)

					 local z = forward * (Height+10)

					 local pos = workspace.CurrentCamera.CFrame.LookVector + z + x + y

					 local look = (workspace.CurrentCamera.CFrame.LookVector - pos).unit

	 

					 handle.BodyPosition.Position = pos + TargetPos + Vector3.new(0, 2, 0)

				 end

	 

				 wait()

				 Mode8()

			 end

		 end

	 

		 function Mode9 ()

			 local Left = {}

			 local Right = {}

	 

			 for i, v in pairs(Accessories) do

				 if (#Left < #Accessories / 2) then

					 Left[#Left + 1] = v

				 else

					 Right[#Right + 1] = v

				 end

			 end

	 

	 

			 function Loop ()

				 if Mode == 9 then

					 for i, v in ipairs(Left) do

						 local angle = tick() * Speed

						 local x = math.sin(angle + i) * Offset

						 local z = math.cos(angle + i) * Offset

	 

	 

						 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, Height, z)

					 end

	 

					 for i, v in ipairs(Right) do

						 local angle = tick() * Speed

						 local x = math.sin(angle + i) * Offset

						 local z = math.cos(angle + i) * Offset

	 

						 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(z, Height, x)

					 end

	 

					 wait()

					 Loop()

				 end

			 end

	 

			 Loop()

		 end

	 

		 function Mode10 ()

			 local Left = {}

			 local Right = {}

	 

			 for i, v in pairs(Accessories) do

				 if (#Left < #Accessories / 2) then

					 Left[#Left + 1] = v

				 else

					 Right[#Right + 1] = v

				 end

			 end

	 

	 

			 function Loop ()

				 if Mode == 10 then

					 for i, v in ipairs(Left) do

						 local angle = tick() * Speed

						 local x = math.sin(angle + i) * Offset

						 local z = math.cos(angle + i) * Offset

	 

						 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(z, x + Height, -x)

					 end

	 

					 for i, v in ipairs(Right) do

						 local angle = tick() * Speed

						 local x = math.sin(angle + i) * Offset

						 local z = math.cos(angle + i) * Offset

	 

						 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(-x, x + Height, -z)

					 end

					 wait()

					 Loop()

				 end

			 end

	 

			 Loop()

		 end

	 

		 function Mode11 ()

			 local OldOffset = Offset

	 

			 local Circle1 = {}

			 local Circle2 = {}

			 for i, v in pairs(Accessories) do

				 if (#Circle1 < #Accessories / 2) then

					 Circle1[#Circle1 + 1] = v

				 else

					 Circle2[#Circle2 + 1] = v

				 end

			 end

	 

			 function Loop ()

				 if Mode == 11 then

					 for i = 1, #Circle1 do

						 local angle = tick() * Speed

						 local x = -math.sin(angle + (i * angle)) * Offset

						 local y = math.cos(angle) / 2 * OldOffset

						 local z = math.cos(angle + (i * -angle)) * Offset

	 

						 Offset = math.sin(angle) / 2 * OldOffset

	 

						 local offset = CFrame.Angles(0,math.rad( Target.Humanoid.RootPart.Orientation.Y), 0) * Vector3.new(x, Height+y, z)

						 Circle1[i].Handle.BodyPosition.Position = TargetPos + offset

					 end

	 

					 for i = 1, #Circle2 do

						 local angle = tick() * Speed

						 local x = -math.sin(angle + (i * angle)) * Offset

						 local y = -math.cos(angle) / 2 * OldOffset

						 local z = math.cos(angle + (i * angle)) * Offset

	 

						 Offset = math.sin(angle) / 2 * OldOffset

	 

						 local offset = CFrame.Angles(0, math.rad(Target.Humanoid.RootPart.Orientation.Y), 0) * Vector3.new(x, Height+y, z)

						 Circle2[i].Handle.BodyPosition.Position = TargetPos + offset

					 end

					 wait()

					 Loop()

				 end

			 end

	 

			 Loop()

		 end

	 

		 function Mode12 ()

			 local Circle1 = {}

			 local Circle2 = {}

			 for i, v in pairs(Accessories) do

				 if (#Circle1 < #Accessories / 2) then

					 Circle1[#Circle1 + 1] = v

				 else

					 Circle2[#Circle2 + 1] = v

				 end

			 end

	 

			 function Loop ()

				 if Mode == 12 then

					 for i = 1, #Circle1 do

						 local angle = tick() * Speed

						 local x = math.sin(angle + (i * 5)) * Offset

						 local z = math.cos(angle + (i * 5)) * Offset

						 local offset = CFrame.Angles(0, math.rad(Target.Humanoid.RootPart.Orientation.Y), 0) * Vector3.new(x, Height, z)

						 Circle1[i].Handle.BodyPosition.Position = TargetPos + offset

					 end

	 

					 for i = 1, #Circle2 do

						 local angle = tick() * Speed

						 local x = math.sin(angle + (i * 5)) * Offset

						 local z = math.cos(angle + (i * 5)) * Offset

						 local offset = CFrame.Angles(0, math.rad(-Target.Humanoid.RootPart.Orientation.Y), 0) * Vector3.new(x, Height + 2, z)

						 Circle2[i].Handle.BodyPosition.Position = TargetPos + offset

					 end

					 wait()

					 Loop()

				 end

			 end

	 

			 Loop()

		 end

	 

		 function Mode13 ()

			 local Circle1 = {}

			 local Circle2 = {}

			 for i, v in pairs(Accessories) do

				 if (#Circle1 < #Accessories / 2) then

					 Circle1[#Circle1 + 1] = v

				 else

					 Circle2[#Circle2 + 1] = v

				 end

			 end

	 

			 function Loop ()

				 if Mode == 13 then

					 for i = 1, #Circle1 do

						 local angle = tick() * Speed

						 local x = math.sin(angle + (i * 5)) * Offset

						 local z = math.cos(angle + (i * 5)) * Offset

						 local offset = CFrame.Angles(0, math.rad(Target.Humanoid.RootPart.Orientation.Y), 0) * Vector3.new(x + Offset * 2, Height, z)

						 Circle1[i].Handle.BodyPosition.Position = TargetPos + offset

					 end

	 

					 for i = 1, #Circle2 do

						 local angle = tick() * Speed

						 local x = math.sin(angle + (i * 5)) * Offset

						 local z = math.cos(angle + (i * 5)) * Offset

						 local offset = CFrame.Angles(0, math.rad(Target.Humanoid.RootPart.Orientation.Y), 0) * Vector3.new(x - Offset * 2, Height, z)

						 Circle2[i].Handle.BodyPosition.Position = TargetPos + offset

					 end

					 wait()

					 Loop()

				 end

			 end

	 

			 Loop()

		 end

	 

		 function Mode14 ()

			 local Circle1 = {}

			 local Circle2 = {}

			 for i, v in pairs(Accessories) do

				 if (#Circle1 < #Accessories / 2) then

					 Circle1[#Circle1 + 1] = v

				 else

					 Circle2[#Circle2 + 1] = v

				 end

			 end

	 

			 function Loop ()

				 if Mode == 14 then

					 for i = 1, #Circle1 do

						 local angle = tick() * Speed

						 local x = math.sin(angle + (i * 5)) * Offset

						 local z = math.cos(angle + (i * 5)) * Offset

						 local offset = CFrame.Angles(0, math.rad(Target.Humanoid.RootPart.Orientation.Y), 0) * Vector3.new(x + Offset * 2, Height, z)

						 Circle1[i].Handle.BodyPosition.Position = TargetPos + offset

					 end

	 

					 for i = 1, #Circle2 do

						 local angle = tick() * Speed

						 local x = math.sin(angle + (i * 5)) * Offset

						 local z = math.cos(angle + (i * 5)) * Offset

						 local offset = CFrame.Angles(0, math.rad(-Target.Humanoid.RootPart.Orientation.Y), 0) * Vector3.new(x - Offset * 2, Height, z)

						 Circle2[i].Handle.BodyPosition.Position = TargetPos + offset

					 end

					 wait()

					 Loop()

				 end

			 end

	 

			 Loop()

		 end

	 

		 function Mode15()

			 Height = -1

			 function Loop ()

				 if Mode == 15 then

					 for i = 1, #Accessories do

						 local offset = CFrame.Angles(0, math.rad(Target.Humanoid.RootPart.Orientation.Y), 0) * Vector3.new(0, Height, -i * Offset / 5)

						 Accessories[i].Handle.BodyPosition.Position = TargetPos + offset

					 end

	 

					 wait()

					 Loop()

				 end

			 end

	 

			 Loop()

			 wait()

		 end

	 

		 function Mode16()

			 local function Loop()

				 if Mode == 16 then

					 for i, v in pairs(Accessories) do

						 local x = math.cos(math.random(1, 255) + (i + 1)) * Offset

						 local z = math.sin(math.random(1, 255) + (i + 1)) * Offset

	 

						 local m = math.random(1, 13)

						 if m == 1 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, Height, z)

						 elseif m == 2 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(z, Height, x)

						 elseif m == 3 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(-x, Height, z)

						 elseif m == 4 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, Height, -z)

						 elseif m == 5 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, z, z)

						 elseif m == 6 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, x, z)

						 elseif m == 7 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(-x, x, z)

						 elseif m == 8 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, -x, z)

						 elseif m == 9 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, x, -z)

						 elseif m == 10 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(-x, z, z)	

						 elseif m == 11 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, -z, z)	

						 elseif m == 12 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(x, z, -z)	

						 elseif m == 13 then

							 v.Handle.BodyPosition.Position = TargetPos + Vector3.new(z, z, z)		

						 end

					 end

				 end

				 wait()

				 Loop()

			 end

	 

			 Loop()

		 end

	 

		 function Mode17()

			 local OldOffset = Offset

			 local OldHeight = Height

	 

			 local Circle1 = {}

			 local Circle2 = {}

			 for i, v in pairs(Accessories) do

				 if (#Circle1 < #Accessories / 2) then

					 Circle1[#Circle1 + 1] = v

				 else

					 Circle2[#Circle2 + 1] = v

				 end

			 end

	 

			 function Loop ()

				 if Mode == 17 then

					 for i = 1, #Circle1 do

						 local angle = tick() * Speed

						 local x = math.sin(angle + (i * #hats)) * Offset

						 local z = math.cos(angle + (i * #hats)) * Offset

	 

						 Offset = math.sin(angle) * OldOffset

						 Height = math.cos(angle) * OldHeight

	 

						 Circle1[i].Handle.BodyPosition.Position = TargetPos + Vector3.new(x, -Height, z)

					 end

	 

					 for i = 1, #Circle2 do

						 local angle = tick() * Speed+1

						 local x = math.cos(angle + (i * #hats)) * Offset

						 local z = math.sin(angle + (i * #hats)) * Offset

	 

						 Offset = math.sin(angle ) * OldOffset

						 Height = math.cos(angle) * OldHeight

	 

						 Circle2[i].Handle.BodyPosition.Position = TargetPos + Vector3.new(x, Height, z)

					 end

					 wait()

					 Loop()

				 end

			 end

	 

			 Loop()

		 end

	 

		 local connect = LC.Chatted:Connect(function(chat)

			 local Split = chat:lower():split(" ")

	 

			 local C1 = Split[1]

			 local C2 = Split[2]

	 

			 if C1 == ".mode" then

				 Mode = tonumber(C2)

				 if C2 == "1" then

					 EditingPos = false

					 NormalSpin = true

				 elseif C2 == "2" then

					 EditingPos = false

					 NormalSpin = false

					 Mode2()		

				 elseif C2 == "3" then

					 EditingPos = false

					 NormalSpin = false

					 Mode3()

				 elseif C2 == "4" then

					 EditingPos = true

					 NormalSpin = true

					 Mode4()

				 elseif C2 == "5" then

					 EditingPos = false

					 NormalSpin = false

					 Mode5()

				 elseif C2 == "6" then

					 EditingPos = false

					 NormalSpin = false

					 Mode6()

				 elseif C2 == "7" then

					 EditingPos = false

					 NormalSpin = false

					 Mode7()

				 elseif C2 == "8" then

					 EditingPos = false

					 NormalSpin = false

					 Mode8()

				 elseif C2 == "9" then

					 EditingPos = false

					 NormalSpin = false

					 Mode9()

				 elseif C2 == "10" then

					 EditingPos = false

					 NormalSpin = false

					 Mode10()

				 elseif C2 == "11" then

					 EditingPos = false

					 NormalSpin = false

					 Mode11()

				 elseif C2 == "12" then

					 EditingPos = false

					 NormalSpin = false

					 Mode12()

				 elseif C2 == "13" then

					 EditingPos = false

					 NormalSpin = false

					 Mode13()

				 elseif C2 == "14" then

					 EditingPos = false

					 NormalSpin = false

					 Mode14()

				 elseif C2 == "15" then

					 EditingPos = false

					 NormalSpin = false

					 Mode15()

				 elseif C2 == "16" then

					 EditingPos = false

					 NormalSpin = false

					 Mode16()

				 elseif C2 == "17" then

					 EditingPos = false

					 NormalSpin = false

					 Mode17()

				 end

	 

			 elseif C1 == ".offset" then

				 Offset = tonumber(C2)

			 elseif C1 == ".speed" then

				 Speed = tonumber(C2)

			 elseif C1 == ".height" then

				 Height = tonumber(C2)

			 elseif C1 == ".power" then

				 Power = tonumber(C2)

			 elseif C1 == ".orbit" then

				 if C2 == "me" then

					 Target = Char

				 elseif C2 == "random" then

					 local randomPlayer = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]

					 Target = randomPlayer.Character	

				 elseif C2 == "nearest" then

					 local minDistance = math.huge

					 for _, player in pairs(game.Players:GetPlayers()) do

						 if player.Character and player.Character ~= Char then

							 local distance = (player.Character.HumanoidRootPart.Position - Char.HumanoidRootPart.Position).magnitude

							 if distance < minDistance then

								 minDistance = distance

								 Target = player.Character

							 end

						 end

					 end

				 elseif C2 == "farthest" then

					 local maxDistance = -math.huge

					 for _, player in pairs(game.Players:GetPlayers()) do

						 if player.Character and player.Character ~= Char then

							 local distance = (player.Character.HumanoidRootPart.Position - Char.HumanoidRootPart.Position).magnitude

							 if distance > maxDistance then

								 maxDistance = distance

								 Target = player.Character

							 end

						 end

					 end

				 else

					 Target = findChar(C2)

				 end

			 elseif C1 == ".blockhats" then

				 for i, v in pairs(Accessories) do

					 if v.Handle:FindFirstChild("Mesh") then

						 v.Handle:FindFirstChild("Mesh"):Remove()

					 else

						 v.Handle:FindFirstChild("SpecialMesh"):Remove()

					 end

				 end

			 elseif C1 == ".cmds" then

				 for i = 1, #Commands do

					 print(Commands[i])

					 wait()

				 end

			 end

		 end)

	 

		 Humanoid.Died:Connect(function()

			 connect:Disconnect()

		 end)

	 

		 Root.CFrame += Vector3.new(0, 10, 0)

		 Root.Anchored = true

		 for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then game:GetService("RunService").Heartbeat:connect(function() v.Velocity = Vector3.new(-30, 0, 0) v.Massless = true end) end  end

		 wait(1)

		 Root.Anchored = false

 end)

 

 cmd.add({"ospeed", "orbitspeed"}, {"orbitspeed <speed> (ospeed)", "Hat orbit command"}, function(...)

		 Speed = tonumber(...)

 end)

 

 cmd.add({"omode", "orbitmode"}, {"orbitmode <1-17> (omode)", "Hat orbit command"}, function(...)

		 Mode = tonumber(...)

		 if (...) == "1" then

			 EditingPos = false

			 NormalSpin = true

		 elseif (...) == "2" then

			 EditingPos = false

			 NormalSpin = false

			 Mode2()		

		 elseif (...) == "3" then

			 EditingPos = false

			 NormalSpin = false

			 Mode3()

		 elseif (...) == "4" then

			 EditingPos = true

			 NormalSpin = true

			 Mode4()

		 elseif (...) == "5" then

			 EditingPos = false

			 NormalSpin = false

			 Mode5()

		 elseif (...) == "6" then

			 EditingPos = false

			 NormalSpin = false

			 Mode6()

		 elseif (...) == "7" then

			 EditingPos = false

			 NormalSpin = false

			 Mode7()

		 elseif (...) == "8" then

			 EditingPos = false

			 NormalSpin = false

			 Mode8()

		 elseif (...) == "9" then

			 EditingPos = false

			 NormalSpin = false

			 Mode9()

		 elseif (...) == "10" then

			 EditingPos = false

			 NormalSpin = false

			 Mode10()

		 elseif (...) == "11" then

			 EditingPos = false

			 NormalSpin = false

			 Mode11()

		 elseif (...) == "12" then

			 EditingPos = false

			 NormalSpin = false

			 Mode12()

		 elseif (...) == "13" then

			 EditingPos = false

			 NormalSpin = false

			 Mode13()

		 elseif (...) == "14" then

			 EditingPos = false

			 NormalSpin = false

			 Mode14()

		 elseif (...) == "15" then

			 EditingPos = false

			 NormalSpin = false

			 Mode15()

		 elseif (...) == "16" then

			 EditingPos = false

			 NormalSpin = false

			 Mode16()

		 elseif (...) == "17" then

			 EditingPos = false

			 NormalSpin = false

			 Mode17()

		 end

 end)

 

 cmd.add({"orbitpower", "opower"}, {"orbitpower <power> (opower)", "Hat orbit command"}, function(...)

		 Power = tonumber(...)

 end)

 

 cmd.add({"orbitheight", "oheight"}, {"orbitheight <height> (oheight)", "Hat orbit command"}, function(...)

		 Height = tonumber(...)

 end)

 

 cmd.add({"orbitoffset", "offset"}, {"orbitoffset <height> (offset)", "Hat orbit command"}, function(...)

		 Offset = tonumber(...)

 end)

 

 cmd.add({"godmode", "god"}, {"godmode (god)", "Makes you unable to be killed"}, function()

	 loadstring(game:HttpGet(('https://pastebin.com/raw/bbyuynM1'),true))()

 end)

 

 cmd.add({"clickfling", "mousefling"}, {"mousefling (clickfling)", "Fling a player by clicking them"}, function()

	 local Players = game:GetService("Players")

	 local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

	 

	 Mouse.Button1Down:Connect(function()

		 local Target = Mouse.Target

		 if Target and Target.Parent and Target.Parent:IsA("Model") and Players:GetPlayerFromCharacter(Target.Parent) then

			 local PlayerName = Players:GetPlayerFromCharacter(Target.Parent).Name

	 local player = game.Players.LocalPlayer

	 local Targets = {PlayerName}

	 

	 local Players = game:GetService("Players")

	 local Player = Players.LocalPlayer

	 

	 local AllBool = false

	 

	 local GetPlayer = function(Name)

		Name = Name:lower()

		if Name == "all" or Name == "others" then

			AllBool = true

			return

		elseif Name == "random" then

			local GetPlayers = Players:GetPlayers()

			if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end

			return GetPlayers[math.random(#GetPlayers)]

		elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then

			for _,x in next, Players:GetPlayers() do

				if x ~= Player then

					if x.Name:lower():match("^"..Name) then

						return x;

					elseif x.DisplayName:lower():match("^"..Name) then

						return x;

					end

				end

			end

		else

			return

		end

	 end

	 

	 local Message = function(_Title, _Text, Time)

print(_Title)

print(_Text)

print(Time)

	 end

	 

	 local SkidFling = function(TargetPlayer)

		local Character = Player.Character

		local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")

		local RootPart = Humanoid and Humanoid.RootPart

	 

		local TCharacter = TargetPlayer.Character

		local THumanoid

		local TRootPart

		local THead

		local Accessory

		local Handle

	 

		if TCharacter:FindFirstChildOfClass("Humanoid") then

			THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")

		end

		if THumanoid and THumanoid.RootPart then

			TRootPart = THumanoid.RootPart

		end

		if TCharacter:FindFirstChild("Head") then

			THead = TCharacter.Head

		end

		if TCharacter:FindFirstChildOfClass("Accessory") then

			Accessory = TCharacter:FindFirstChildOfClass("Accessory")

		end

		if Accessoy and Accessory:FindFirstChild("Handle") then

			Handle = Accessory.Handle

		end

	 

		if Character and Humanoid and RootPart then

			if RootPart.Velocity.Magnitude < 50 then

				getgenv().OldPos = RootPart.CFrame

			end

			if THumanoid and THumanoid.Sit and not AllBool then

			end

			if THead then

				workspace.CurrentCamera.CameraSubject = THead

			elseif not THead and Handle then

				workspace.CurrentCamera.CameraSubject = Handle

			elseif THumanoid and TRootPart then

				workspace.CurrentCamera.CameraSubject = THumanoid

			end

			if not TCharacter:FindFirstChildWhichIsA("BasePart") then

				return

			end

			

			local FPos = function(BasePart, Pos, Ang)

				RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang

				Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)

				RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)

				RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)

			end

			

			local SFBasePart = function(BasePart)

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

				until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait

			end

			

			workspace.FallenPartsDestroyHeight = 0/0

			

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

			end

			

			BV:Destroy()

			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)

			workspace.CurrentCamera.CameraSubject = Humanoid

			

			repeat

				RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)

				Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))

				Humanoid:ChangeState("GettingUp")

				table.foreach(Character:GetChildren(), function(_, x)

					if x:IsA("BasePart") then

						x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()

					end

				end)

				task.wait()

			until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25

			workspace.FallenPartsDestroyHeight = getgenv().FPDH

		else

		end

	 end

	 

	 getgenv().Welcome = true

	 if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

	 

	 if AllBool then

		for _,x in next, Players:GetPlayers() do

			SkidFling(x)

		end

	 end

	 

	 for _,x in next, Targets do

		if GetPlayer(x) and GetPlayer(x) ~= Player then

			if GetPlayer(x).UserId ~= 1414978355 then

				local TPlayer = GetPlayer(x)

				if TPlayer then

					SkidFling(TPlayer)

				end

			else

			end

		elseif not GetPlayer(x) and not AllBool then

		end

	 end

		 end

	 end)

 end)

 

 cmd.add({"ping"}, {"ping", "Shows your ping"}, function()

 -- Gui to Lua

 -- Version: 3.2

 

 -- Instances:

 

 local Ping = Instance.new("ScreenGui")

 local Pingtext = Instance.new("TextLabel")

 local UICorner = Instance.new("UICorner")

 local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

 

 

 --Properties:

 

 Ping.Name = "Ping"

 Ping.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

 Ping.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

 Ping.ResetOnSpawn = false

 

 Pingtext.Name = "Pingtext"

 Pingtext.Parent = Ping

 Pingtext.BackgroundColor3 = Color3.fromRGB(12, 4, 20)

 Pingtext.BackgroundTransparency = 0.140

 Pingtext.Position = UDim2.new(0, 0, 0, 48)

 Pingtext.Size = UDim2.new(0, 201, 0, 35)

 Pingtext.Font = Enum.Font.SourceSans

 Pingtext.Text = "FPS:"

 Pingtext.TextColor3 = Color3.fromRGB(255, 255, 255)

 Pingtext.TextScaled = true

 Pingtext.TextSize = 14.000

 Pingtext.TextWrapped = true

 

 UICorner.CornerRadius = UDim.new(1, 0)

 UICorner.Parent = Pingtext

 

 UIAspectRatioConstraint.Parent = Pingtext

 UIAspectRatioConstraint.AspectRatio = 5.743

 

 local script = Instance.new('LocalScript', Pingtext)

 local RunService = game:GetService("RunService")

 RunService.RenderStepped:Connect(function(ping) 

 script.Parent.Text = ("Ping: " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping))) -- your ping

 end)

		 end)

 

		 cmd.add({"fps"}, {"fps", "Shows your fps"}, function()

 -- Gui to Lua

 -- Version: 3.2

 

 -- Instances:

 

 local Fps = Instance.new("ScreenGui")

 local Fpstext = Instance.new("TextLabel")

 local UICorner = Instance.new("UICorner")

 local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

 

 

 --Properties:

 

 Fps.Name = "Fps"

 Fps.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

 Fps.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

 Fps.ResetOnSpawn = false

 

 Fpstext.Name = "Fpstext"

 Fpstext.Parent = Fps

 Fpstext.BackgroundColor3 = Color3.fromRGB(12, 4, 20)

 Fpstext.BackgroundTransparency = 0.140

 Fpstext.Position = UDim2.new(0, 0, 0, 6)

 Fpstext.Size = UDim2.new(0, 201, 0, 35)

 Fpstext.Font = Enum.Font.SourceSans

 Fpstext.Text = "FPS:"

 Fpstext.TextColor3 = Color3.fromRGB(255, 255, 255)

 Fpstext.TextScaled = true

 Fpstext.TextSize = 14.000

 Fpstext.TextWrapped = true

 

 UICorner.CornerRadius = UDim.new(1, 0)

 UICorner.Parent = Fpstext

 

 UIAspectRatioConstraint.Parent = Fpstext

 UIAspectRatioConstraint.AspectRatio = 5.743

 

 local script = Instance.new('LocalScript', Fpstext)

 local RunService = game:GetService("RunService")

 RunService.RenderStepped:Connect(function(frame) 

 script.Parent.Text = ("FPS: "..math.round(1/frame)) 

 end)

		 end)

 

 cmd.add({"commands", "cmds"}, {"commands (cmds)", "Open the command list"}, function()

	 gui.commands()

 end)

 

 cmd.add({"commandcount", "cc"}, {"commandcount (cc)", "Counds how many commands NA has"}, function()

 

 Notify({

	 Description = "Nameless Admin currently has ".. commandcount .. " commands";

	 Title = "Nameless Admin";

	 Duration = 5;

	 

	 });

 end)

 

 hiddenfling = false

 cmd.add({"walkfling", "wfling"}, {"walkfling (wfling) [THANKS TO X]", "probably the best fling lol"}, function()

	 Notify({

		 Description = "Walkfling enabled";

		 Title = "Nameless Admin";

		 Duration = 5;

		 

		 });

	 if game:GetService("ReplicatedStorage"):FindFirstChild("juisdfj0i32i0eidsuf0iok") then

		 hiddenfling = true

	 else

		 hiddenfling = true

		 detection = Instance.new("Decal")

		 detection.Name = "juisdfj0i32i0eidsuf0iok"

		 detection.Parent = game:GetService("ReplicatedStorage")

		 local function fling()

			 local hrp, c, vel, movel = nil, nil, nil, 0.1

			 while true do

				 game:GetService("RunService").Heartbeat:Wait()

				 if hiddenfling then

					 local lp = game.Players.LocalPlayer

					 while hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do

						 game:GetService("RunService").Heartbeat:Wait()

						 c = lp.Character

						 hrp = c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")

					 end

					 if hiddenfling then

						 vel = hrp.Velocity

						 hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)

						 game:GetService("RunService").RenderStepped:Wait()

						 if c and c.Parent and hrp and hrp.Parent then

							 hrp.Velocity = vel

						 end

						 game:GetService("RunService").Stepped:Wait()

						 if c and c.Parent and hrp and hrp.Parent then

							 hrp.Velocity = vel + Vector3.new(0, movel, 0)

							 movel = movel * -1

						 end

					 end

				 end

			 end

		 end

		 

		 fling()

	 end

 end)

 

 cmd.add({"unwalkfling", "unwfling"}, {"unwalkfling (unwfling)", "stop the walkfling command"}, function()

	 Notify({

		 Description = "Walkfling disabled";

		 Title = "Nameless Admin";

		 Duration = 5;

		 

		 });

		 hiddenfling = false

 end)

 

 cmd.add({"fling3"}, {"fling3 <player>", "another variant of fling"}, function(...)

	 oldcframe = Players.LocalPlayer.Character.HumanoidRootPart.CFrame

	 

 User = (...)

 Target = getPlr(User)

	 

			 hiddenfling = true

			 

 if game:GetService("ReplicatedStorage"):FindFirstChild("juisdfj0i32i0eidsuf0iok") then

		 hiddenfling = true

	 else

		 detection = Instance.new("Decal")

		 detection.Name = "juisdfj0i32i0eidsuf0iok"

		 detection.Parent = game:GetService("ReplicatedStorage")

		 local function fling()

			 local hrp, c, vel, movel = nil, nil, nil, 0.1

			 while true do

				 game:GetService("RunService").Heartbeat:Wait()

				 if hiddenfling then

					 local lp = game.Players.LocalPlayer

					 while hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do

						 game:GetService("RunService").Heartbeat:Wait()

						 c = lp.Character

						 hrp = c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")

					 end

					 if hiddenfling then

						 vel = hrp.Velocity

						 hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)

						 game:GetService("RunService").RenderStepped:Wait()

						 if c and c.Parent and hrp and hrp.Parent then

							 hrp.Velocity = vel

						 end

						 game:GetService("RunService").Stepped:Wait()

						 if c and c.Parent and hrp and hrp.Parent then

							 hrp.Velocity = vel + Vector3.new(0, movel, 0)

							 movel = movel * -1

						 end

					 end

				 end

			 end

		 end

		 fling()

			 end

			 Player.Character.Humanoid:SetStateEnabled("Seated", false)

			 Player.Character.Humanoid.Sit = true

			 if User == "all" or User == "others" then

				 for _,x in next, game.Players:GetPlayers() do

					 for i=1, 10 do

						 wait(0.017)

						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 4)

						 wait(0.01)

						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2)

						 wait(0.01)

						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame

						 wait(0.01)

						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)

						 wait(0.01)

						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)

						 wait(0.01)

						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame

						 wait(0.01)

						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -1)

						 wait(0.01)

						 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -1)

						 end

					 end

			 else

		 for i=1, 10 do

		 wait(0.017)

		 Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 4)

		 wait(0.01)

		 Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -2)

		 wait(0.01)

		 Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame

		 wait(0.01)

		 Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3)

		 wait(0.01)

		 Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)

		 wait(0.01)

		 Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame

		 wait(0.01)

		 Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -1)

		 wait(0.01)

		 Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -1)

		 end

		 end

		 sFLY(true)

		 speedofthevfly = 1

		 wait(0.3)

		 Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe

		 wait(0.13)

				 Player.Character.Humanoid:SetStateEnabled("Seated", true)

					 Player.Character.Humanoid.Sit = false

		 FLYING = false

			 game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false

			 hiddenfling = false

 end)

 

 cmd.add({"rjre", "rejoinrefresh"}, {"rjre (rejoinrefresh)", "Rejoins and teleports you to the position where you were before"}, function()

 

	 queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

 

	 

	 if not DONE then

	   DONE = true

	   local qot = print("a")

	   local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

	   if hrp then

		 qot = "task.spawn(function() end) repeat wait() until game and game:IsLoaded() local lp = game:GetService('Players').LocalPlayer local char = lp.Character or lp.CharacterAdded:Wait() repeat char:WaitForChild('HumanoidRootPart').CFrame = CFrame.new("..tostring(hrp.CFrame)..") wait() until (Vector3.new("..tostring(hrp.Position)..") - char:WaitForChild('HumanoidRootPart').Position).Magnitude < 10"

	   end

	   queueteleport(qot)

	   game:GetService("TeleportService"):TeleportCancel()

		 game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)

	 end

		 end)

 

 cmd.add({"rejoin", "rj"}, {"rejoin (rj)", "Rejoin the game"}, function()

	 game:GetService("TeleportService"):Teleport(game.PlaceId)

	 wait()

	 

 

 

 wait();

 

 Notify({

 Description = "Rejoining...";

 Title = "Nameless Admin";

 Duration = 5;

 

 });

 end)

 

 wrap(function()

	 --i am so not putting an emulator as a command here

 end)

 

 --[ LOCALPLAYER ]--

 local function respawn()

 cf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

 game.Players.LocalPlayer.Character.Humanoid.Health = 0

 player.CharacterAdded:wait(1); wait(0.2);

	 character:WaitForChild("HumanoidRootPart").CFrame = cf

	 end

 

 local function refresh()

 cf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

 game.Players.LocalPlayer.Character.Humanoid.Health = 0

 player.CharacterAdded:wait(1); wait(0.2);

	 character:WaitForChild("HumanoidRootPart").CFrame = cf

 end

 

 local abort = 0

 local function getTools(amt)

	 if not amt then amt = 1 end

	 local toolAmount, grabbed = 0, {}

	 local lastCF = character.PrimaryPart.CFrame

	 local ab = abort

	 

	 for i, v in pairs(localPlayer:FindFirstChildWhichIsA("Backpack"):GetChildren()) do

		 if v:IsA("BackpackItem") then

			 toolAmount = toolAmount + 1

		 end

	 end

	 if toolAmount >= amt then return localPlayer:FindFirstChildWhichIsA("Backpack"):GetChildren() end

	 if not localPlayer:FindFirstChildWhichIsA("Backpack"):FindFirstChildWhichIsA("BackpackItem") then return end

	 

	 repeat

		 repeat wait() until localPlayer:FindFirstChildWhichIsA("Backpack") or ab ~= abort

		 backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

		 wrap(function()

			 repeat wait() until backpack:FindFirstChildWhichIsA("BackpackItem")

			 for _, tool in pairs(backpack:GetChildren()) do

				 if #grabbed >= amt or ab ~= abort then break end

				 if tool:IsA("BackpackItem") then

					 tool.Parent = localPlayer

					 table.insert(grabbed, tool)

				 end

			 end

		 end)

		 

		 respawn()

		 wait(.1)

	 until

		 #grabbed >= amt or ab ~= abort

	 

	 repeat wait() until localPlayer.Character and tostring(localPlayer.Character) ~= "respawn_" and localPlayer.Character == character

	 wait(.2)

	 

	 repeat wait() until localPlayer:FindFirstChildWhichIsA("Backpack") or ab ~= abort

	 local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

	 for _, tool in pairs(grabbed) do

		 if tool:IsA("BackpackItem") then

			 tool.Parent = backpack

		 end

	 end

	 wrap(function()

		 repeat wait() until character.PrimaryPart

		 wait(.2)

		 character:SetPrimaryPartCFrame(lastCF)

	 end)

	 wait(.2)

	 return grabbed

 end

 

 cmd.add({"joke"}, {"joke", "Random joke generator"}, function()

   coroutine.wrap(function()

		 local HttpService = game:GetService('HttpService')

		 local check = "https://official-joke-api.appspot.com/jokes/programming/random"

		 local final1 = game:HttpGet(check)

		 local final = string.gsub(final1, "[%[%]]", "")

		 local decoded = HttpService:JSONDecode(final)

		 

			  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(decoded.setup, 'All')

		 wait(2)

			  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(decoded.punchline, 'All')

   end)()

 

 end)

 cmd.add({"idiot"}, {"idiot <player>", "Tell someone that they are an idiot"}, function(...)

			 local old = getChar().HumanoidRootPart.CFrame

 

 Username = (...)

 

	 Players = game:GetService("Players")

		 HRP = game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored

		 

 

 target = getPlr(Username)

 

	 getChar().HumanoidRootPart.CFrame = target.Character.Humanoid.RootPart.CFrame * CFrame.new(0, 1, 4)

 local message = "Hey " .. target.Name .. ""

  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, 'All')

 wait(1)

  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer('Sorry to tell you this, but..', 'All')

 wait(1)

  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer('You are an idiot!', 'All')

  wait(1)

   game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer('HAHAHA!', 'All')

 wait(1)

	 getChar():WaitForChild("HumanoidRootPart").CFrame = old

 

 

 end)

 

 cmd.add({"bringto"}, {"bringto (playertobring) [playertobringto]", "Brings a player to another player"}, function(h, d)

 local target1 = getPlr(h)

 local target2 = getPlr(d)

 

 local old = getChar().HumanoidRootPart.CFrame

 local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")

 

 local distance = 1

 local gripPosition = target2.Character.HumanoidRootPart.Position - target2.Character.HumanoidRootPart.CFrame.lookVector * distance

 wait(0.2)

 

 local Target = target1

 local Character = Player.Character        

 local PlayerGui = Player:waitForChild("PlayerGui")

 local Backpack = Player:waitForChild("Backpack")

 local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid") or false

 local RootPart = Character and Humanoid and Humanoid.RootPart or false

 local RightArm = Character and Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand")

 if not Humanoid or not RootPart or not RightArm then

	 return

 end

 Humanoid:UnequipTools()

 local MainTool = Backpack:FindFirstChildWhichIsA("Tool") or false

 if not MainTool or not MainTool:FindFirstChild("Handle") then

	 return

 end

 local TPlayer = getPlr(Target)

 local TCharacter = TPlayer and TPlayer.Character

 local THumanoid = TCharacter and TCharacter:FindFirstChildWhichIsA("Humanoid") or false

 local TRootPart = TCharacter and THumanoid and THumanoid.RootPart or false

 if not THumanoid or not TRootPart then

	 return

 end

 Character.Humanoid.Name = "DAttach"

 local l = Character["DAttach"]:Clone()

 l.Parent = Character

 l.Name = "Humanoid"

 wait()

 Character["DAttach"]:Destroy()

 game.Workspace.CurrentCamera.CameraSubject = Character

 Character.Animate.Disabled = true

 wait()

 Character.Animate.Disabled = false

 Character.Humanoid:EquipTool(MainTool)

 wait()

 CF = Player.Character.PrimaryPart.CFrame

 if firetouchinterest then

	 local flag = false

	 task.defer(function()

		 MainTool.Handle.AncestryChanged:wait()

		 flag = true

	 end)

	 repeat

		 firetouchinterest(MainTool.Handle, TRootPart, 0)

		 firetouchinterest(MainTool.Handle, TRootPart, 1)

		 wait()

		 Player.Character.HumanoidRootPart.CFrame = CF

	 until flag

 else

	 Player.Character.HumanoidRootPart.CFrame =

	 TCharacter.HumanoidRootPart.CFrame

	 wait()

	 Player.Character.HumanoidRootPart.CFrame =

	 TCharacter.HumanoidRootPart.CFrame

	 wait()

	 Player.Character.HumanoidRootPart.CFrame = CF

	 wait()

 end

 wait(.3)

 Player.Character:SetPrimaryPartCFrame(CF)

 if Humanoid.RigType == Enum.HumanoidRigType.R6 then

	 Character["Right Arm"].RightGrip:Destroy()

 else

	 Character["RightHand"].RightGrip:Destroy()

	 Character["RightHand"].RightGripAttachment:Destroy()

 end

	 

 wait(4)

 CF = Player.Character.HumanoidRootPart.CFrame

 player.CharacterAdded:wait(1):waitForChild("HumanoidRootPart").CFrame = CF

 

 -- Teleport the first player to the position next to the second player

 getChar().HumanoidRootPart.CFrame = CFrame.new(gripPosition) + Vector3.new(0, 3, 0)

 

 -- Tween the first player to the second player's position

 local tween = game:GetService("TweenService"):Create(getChar().HumanoidRootPart, TweenInfo.new(1), {CFrame = target2.Character.HumanoidRootPart.CFrame})

 tween:Play()

 

 tool.AncestryChanged:Wait() 

 if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then

	 --plr.Character["Right Arm"]:Destroy()

	 game.Players.LocalPlayer.Character["Right Arm"].RightGrip:Destroy() --r6

 elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then

	 --plr.Character["RightHand"]:Destroy()

	 game.Players.LocalPlayer.Character.RightHand.RightGrip:Destroy() --r15

 end

 wait(0.07)

 respawn()

 end)

 

 cmd.add({"accountage", "accage"}, {"accountage <player> (accage)", "Tells the account age of a player in the server"}, function(...)

 Username = (...)

 

 target = getPlr(Username)

 teller = target.AccountAge

 accountage = "The account age of " .. target.Name .. " is " .. teller

 

 

		 

 

 

 wait();

 

 Notify({

 Description = accountage;

 Title = "Nameless Admin";

 Duration = 7;

 

 });

 end)

 

 cmd.add({"notoolscripts", "nts"}, {"notoolscripts (nts)", "Destroy all scripts in backpack"}, function()

	 print("test")

	 local bp = player:FindFirstChildWhichIsA("Backpack")

	 for _, item in pairs(bp:GetChildren()) do

		 for _, obj in pairs(item:GetDescendants()) do

			 if obj:IsA("LocalScript") or obj:IsA("Script") then

				 obj.Disabled = true

				 obj:Destroy()

			 end

		 end

	 end

 end)

 

 cmd.add({"spblockspam", "starterblockscam"}, {"spblockspam (starterblockspam)", "Spam blocks in any game that has the starter place"}, function()

 anniblockspam = true

 end)

 

 cmd.add({"febtools"}, {"febtools", "Move parts that are your hats"}, function()

 -- [[ THANKS TO ROUXHAVER FOR THIS ]] --

 -- check out his github - https://github.com/rouxhaver

 local Players = game:GetService("Players")

 local RunService = game:GetService("RunService")

 local LocalPlayer = Players.LocalPlayer

 

 if not getgenv().Network then

	 getgenv().Network = {

		 BaseParts = {};

		 FakeConnections = {};

		 Connections = {};

		 Output = {

			 Enabled = true;

			 Prefix = "[NETWORK] ";

			 Send = function(Type,Output,BypassOutput)

				 if typeof(Type) == "function" and (Type == print or Type == warn or Type == error) and typeof(Output) == "string" and (typeof(BypassOutput) == "nil" or typeof(BypassOutput) == "boolean") then

					 if Network["Output"].Enabled == true or BypassOutput == true then

						 Type(Network["Output"].Prefix..Output);

					 end;

				 elseif Network["Output"].Enabled == true then

					 error(Network["Output"].Prefix.."Output Send Error : Invalid syntax.");

				 end;

			 end;

		 };

		 CharacterRelative = false;

	 }

 

	 Network["Output"].Send(print,": Loading.")

	 Network["Velocity"] = Vector3.new(14.46262424,14.46262424,14.46262424); --exactly 25.1 magnitude

	 Network["RetainPart"] = function(Part,ReturnFakePart) --function for retaining ownership of unanchored parts

		 assert(typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(workspace),Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg1 (Part) must be a BasePart which is a descendant of workspace.")

		 assert(typeof(ReturnFakePart) == "boolean" or typeof(ReturnFakePart) == "nil",Network["Output"].Prefix.."RetainPart Error : Invalid syntax: Arg2 (ReturnFakePart) must be a boolean or nil.")

		 if not table.find(Network["BaseParts"],Part) then

			 if Network.CharacterRelative == true then

				 local Character = LocalPlayer.Character

				 if Character and Character.PrimaryPart then

					 local Distance = (Character.PrimaryPart.Position-Part.Position).Magnitude

					 if Distance > 1000 then

						 Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is more than "..gethiddenproperty(LocalPlayer,"MaximumSimulationRadius").." studs away.")

						 return false

					 end

				 else

					 Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as the LocalPlayer Character's PrimaryPart does not exist.")

					 return false

				 end

			 end

			 table.insert(Network["BaseParts"],Part)

			 Part.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)

			 Network["Output"].Send(print,"PartOwnership Output : PartOwnership applied to BasePart "..Part:GetFullName()..".")

			 if ReturnFakePart == true then

				 return FakePart

			 end

		 else

			 Network["Output"].Send(warn,"RetainPart Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it already active.")

			 return false

		 end

	 end

 

	 Network["RemovePart"] = function(Part) --function for removing ownership of unanchored part

		 assert(typeof(Part) == "Instance" and Part:IsA("BasePart"),Network["Output"].Prefix.."RemovePart Error : Invalid syntax: Arg1 (Part) must be a BasePart.")

		 local Index = table.find(Network["BaseParts"],Part)

		 if Index then

			 table.remove(Network["BaseParts"],Index)

			 Network["Output"].Send(print,"RemovePart Output: PartOwnership removed from BasePart "..Part:GetFullName()..".")

		 else

			 Network["Output"].Send(warn,"RemovePart Warning : BasePart "..Part:GetFullName().." not found in BaseParts table.")

		 end

	 end

 

	 Network["SuperStepper"] = Instance.new("BindableEvent") --make super fast event to connect to

	 for _,Event in pairs({RunService.Stepped,RunService.Heartbeat}) do

		 Event:Connect(function()

			 return Network["SuperStepper"]:Fire(Network["SuperStepper"],tick())

		 end)

	 end

 

	 Network["PartOwnership"] = {};

	 Network["PartOwnership"]["PreMethodSettings"] = {};

	 Network["PartOwnership"]["Enabled"] = false;

	 Network["PartOwnership"]["Enable"] = coroutine.create(function() --creating a thread for network stuff

		 if Network["PartOwnership"]["Enabled"] == false then

			 Network["PartOwnership"]["Enabled"] = true --do cool network stuff before doing more cool network stuff

			 Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus = LocalPlayer.ReplicationFocus

			 LocalPlayer.ReplicationFocus = workspace

			 Network["PartOwnership"]["PreMethodSettings"].SimulationRadius = gethiddenproperty(LocalPlayer,"SimulationRadius")

			 Network["PartOwnership"]["Connection"] = Network["SuperStepper"].Event:Connect(function() --super fast asynchronous loop

				 sethiddenproperty(LocalPlayer,"SimulationRadius",1/0)

				 for _,Part in pairs(Network["BaseParts"]) do --loop through parts and do network stuff

					 coroutine.wrap(function()

						 if Part:IsDescendantOf(workspace) then

							 if Network.CharacterRelative == true then

								 local Character = LocalPlayer.Character;

								 if Character and Character.PrimaryPart then

									 local Distance = (Character.PrimaryPart.Position - Part.Position).Magnitude

									 if Distance > 1000 then

										 Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as it is more than "..gethiddenproperty(LocalPlayer,"MaximumSimulationRadius").." studs away.")

										 Lost = true;

										 Network["RemovePart"](Part)

									 end

								 else

									 Network["Output"].Send(warn,"PartOwnership Warning : PartOwnership not applied to BasePart "..Part:GetFullName()..", as the LocalPlayer Character's PrimaryPart does not exist.")

								 end

							 end

							 Part.Velocity = Network["Velocity"]+Vector3.new(0,math.cos(tick()*10)/100,0) --keep network by sending physics packets of 30 magnitude + an everchanging addition in the y level so roblox doesnt get triggered and fuck your ownership

						 else

							 Network["RemovePart"](Part)

						 end

					 end)()

				 end

			 end)

			 Network["Output"].Send(print,"PartOwnership Output : PartOwnership enabled.")

		 else

			 Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already enabled.")

		 end

	 end)

	 Network["PartOwnership"]["Disable"] = coroutine.create(function()

		 if Network["PartOwnership"]["Connection"] then

			 Network["PartOwnership"]["Connection"]:Disconnect()

			 LocalPlayer.ReplicationFocus = Network["PartOwnership"]["PreMethodSettings"].ReplicationFocus

			 sethiddenproperty(LocalPlayer,"SimulationRadius",Network["PartOwnership"]["PreMethodSettings"].SimulationRadius)

			 Network["PartOwnership"]["PreMethodSettings"] = {}

			 for _,Part in pairs(Network["BaseParts"]) do

				 Network["RemovePart"](Part)

			 end

			 Network["PartOwnership"]["Enabled"] = false

			 Network["Output"].Send(print,"PartOwnership Output : PartOwnership disabled.")

		 else

			 Network["Output"].Send(warn,"PartOwnership Output : PartOwnership already disabled.")

		 end

	 end)

	 Network["Output"].Send(print,": Loaded.")

 end

 

 coroutine.resume(Network["PartOwnership"]["Enable"])

 

 

 

 local lp = game.Players.LocalPlayer -- local player var

 local char = lp.Character -- char var

 

 lp.Character = nil -- nil character for pdeath

 lp.Character = char -- newvar

 

 local hrp = char:FindFirstChild("HumanoidRootPart") -- hrp check

 if hrp == nil then return end -- return if no hrp

 

 wait(game.Players.RespawnTime + .3) -- nil wait

 

 hrp:Destroy() -- rip hrp

 char.Torso:Destroy() -- rip torso

 local clone = char["Body Colors"]:Clone() -- body colors clone

 char["Body Colors"]:Destroy() -- delete any instances from char that replicates deletion

 clone.Parent = char -- parent back in clone in case some script uses it

 

 

 

 

 player = game:GetService("Players").LocalPlayer

 Gui = player.PlayerGui

 Backpack = player.Backpack

 Mouse = player:GetMouse()

 

 Parts_Folder = Instance.new("Folder",workspace)

 

 for i,v in pairs(player.Character:GetChildren()) do

	 if v:IsA("Accessory") then

		 local Part = Instance.new("Part",Parts_Folder)

		 Part.Name = v.Name

		 Part.Anchored = true

		 Part.Size = v.Handle.Size - Vector3.new(0.001,0.001,0.001)

		 Part.Position = player.Character.Head.Position + Vector3.new(math.random(-5,5),math.random(-1,1),math.random(-5,5))

		 Part:SetAttribute("Moveable",true)

		 Part.Material = Enum.Material.SmoothPlastic

		 Part.CanCollide = false

		 Part.Color = Color3.new(1,0,0)

		 

		 local Hat = v.Handle

		 local vbreak = false

		 Network.RetainPart(Hat)

		 Hat.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)

		 coroutine.wrap(function()

			 while task.wait() do

				 if vbreak == true then break end

				 Hat.CFrame = Part.CFrame

			 end

		 end)()

		 Hat:FindFirstChildWhichIsA("SpecialMesh"):Destroy()

	 end

 end

 

 

 Move_Tool = Instance.new("Tool",Backpack)

 Rotate_Tool = Instance.new("Tool",Backpack)

 MHandle = Instance.new("Part",Move_Tool)

 RHandle = Instance.new("Part",Rotate_Tool)

 Mgrabs = Instance.new("Handles",Gui)

 Rgrabs = Instance.new("ArcHandles",Gui)

 Outline = Instance.new("Highlight")

 

 Move_Tool.Name = "Move"

 Move_Tool.CanBeDropped = false

 

 Rotate_Tool.Name = "Rotate"

 Rotate_Tool.CanBeDropped = false

 

 MHandle.Name = "Handle"

 MHandle.Transparency = 1

 

 RHandle.Name = "Handle"

 RHandle.Transparency = 1

 

 Mgrabs.Visible = false

 Mgrabs.Color3 = Color3.new(1, 0.8, 0)

 Mgrabs.Style = "Movement"

 

 Rgrabs.Visible = false

 

 Outline.FillTransparency = 1

 Outline.OutlineTransparency = 0

 Outline.OutlineColor = Color3.new(1, 0.8, 0)

 

 Active_Part = nil

 

 Move_Tool.AncestryChanged:Connect(function()

	 if Move_Tool.Parent == char and Active_Part ~= nil then

		 Mgrabs.Visible = true

		 Mgrabs.Adornee = Active_Part

	 end

 end)

 

 Move_Tool.AncestryChanged:Connect(function()

	 if Move_Tool.Parent ~= char then

		 Mgrabs.Visible = false

		 Mgrabs.Adornee = nil

	 end

 end)

 

 Mouse.Button1Down:Connect(function()

	 if Move_Tool.Parent == char and Mouse.Target:GetAttribute("Moveable") then

		 Active_Part = Mouse.Target

		 Mgrabs.Visible = true

		 Mgrabs.Adornee = Active_Part

		 Outline.Parent = Active_Part

	 end

	 if Rotate_Tool.Parent == char and Mouse.Target:GetAttribute("Moveable") then

		 Active_Part = Mouse.Target

		 Rgrabs.Visible = true

		 Rgrabs.Adornee = Active_Part

		 Outline.Parent = Active_Part

	 end

 end)

 

 Rotate_Tool.AncestryChanged:Connect(function()

	 if Rotate_Tool.Parent == char and Active_Part ~= nil then

		 Rgrabs.Visible = true

		 Rgrabs.Adornee = Active_Part

	 end

 end)

 

 Rotate_Tool.AncestryChanged:Connect(function()

	 if Rotate_Tool.Parent ~= char then

		 Rgrabs.Visible = false

		 Rgrabs.Adornee = nil

	 end

 end)

 

 MOGCFrame = CFrame.new()

 

 Mgrabs.MouseButton1Down:Connect(function()

	 MOGCFrame = Active_Part.CFrame

 end)

 

 Mgrabs.MouseDrag:Connect(function(knob, pos)

	 if knob == Enum.NormalId.Front then

		 Active_Part.CFrame = MOGCFrame + MOGCFrame.LookVector * pos

	 end

	 if knob == Enum.NormalId.Back then

		 Active_Part.CFrame = MOGCFrame + MOGCFrame.LookVector * -pos

	 end

	 if knob == Enum.NormalId.Top then

		 Active_Part.CFrame = MOGCFrame + MOGCFrame.UpVector * pos

	 end

	 if knob == Enum.NormalId.Bottom then

		 Active_Part.CFrame = MOGCFrame + MOGCFrame.UpVector * -pos

	 end

	 if knob == Enum.NormalId.Left then

		 Active_Part.CFrame = MOGCFrame + MOGCFrame.RightVector * -pos

	 end

	 if knob == Enum.NormalId.Right then

		 Active_Part.CFrame = MOGCFrame + MOGCFrame.RightVector * pos

	 end

 end)

 

 ROGCFrame = CFrame.new()

 

 Rgrabs.MouseButton1Down:Connect(function()

	 ROGCFrame = Active_Part.CFrame

 end)

 

 Rgrabs.MouseDrag:Connect(function(knob, angle)

	 if knob == Enum.Axis.Y then

		 Active_Part.CFrame = ROGCFrame * CFrame.Angles(0,angle,0)

	 end

	 if knob == Enum.Axis.X then

		 Active_Part.CFrame = ROGCFrame * CFrame.Angles(angle,0,0)

	 end

	 if knob == Enum.Axis.Z then

		 Active_Part.CFrame = ROGCFrame * CFrame.Angles(0,0,angle)

	 end

 end)

 

 

 

 Mouse.TargetFilter = player.Character

 

 

 

 camera = workspace.CurrentCamera

 input = game:GetService("UserInputService")

 

 Camera_Part = Instance.new("Part",workspace)

 Camera_Part.Anchored = true

 Camera_Part.Transparency = 0.85

 Camera_Part.Shape = Enum.PartType.Ball

 Camera_Part.Size = Vector3.new(0.5,0.5,0.5)

 Camera_Part.Material = Enum.Material.SmoothPlastic

 

 current_position = char.Head.Position

 

 camera.CameraSubject = Camera_Part

 

 

 

 for i,v in pairs(char:GetDescendants()) do

	 if v:IsA("BasePart") and v.Parent:IsA("Accessory") == false then

		 v:Destroy()

	 end

 end



 

 while wait() do

	 if vbreak == true then

		 break

	 end

	 if input:IsKeyDown(Enum.KeyCode.D) then

		 current_position += camera.CFrame.RightVector * speed

	 end

	 if input:IsKeyDown(Enum.KeyCode.A) then

		 current_position += camera.CFrame.RightVector * -speed

	 end

	 if input:IsKeyDown(Enum.KeyCode.W) then

		 current_position += camera.CFrame.LookVector * speed

	 end

	 if input:IsKeyDown(Enum.KeyCode.S) then

		 current_position += camera.CFrame.LookVector * -speed

	 end

	 if input:IsKeyDown(Enum.KeyCode.E) then

		 current_position += camera.CFrame.UpVector * speed

	 end

	 if input:IsKeyDown(Enum.KeyCode.Q) then

		 current_position += camera.CFrame.UpVector * -speed

	 end

	 if input:IsKeyDown(Enum.KeyCode.LeftShift) then do

			 speed = 1.5

		 end else

		 speed = 0.75

	 end

	 Camera_Part.Position = current_position

 end

	 end)

 

 cmd.add({"unspblockspam", "unstarterblockscam"}, {"unspblockspam (unstarterblockspam)", "Stops the starterblockspam command"}, function()

 anniblockspam = false

 end)

 

 cmd.add({"blockspam"}, {"blockspam [amount]", "Spawn blocks by the given amount"}, function(amt)

	 amt = tonumber(amt) or 1

	 local hatAmount, grabbed = 0, {}

	 local lastCF = character.PrimaryPart.CFrame

	 character:ClearAllChildren()

	 respawn()

	 repeat

		 if character.Name ~= "respawn_" then

			 local c = character

			 repeat wait() until c:FindFirstChildWhichIsA("Accoutrement")

			 c:MoveTo(lastCF.p)

			 wait(1)

			 for i, v in pairs(c:GetChildren()) do

				 if v:IsA("Accoutrement") then

					 v:WaitForChild("Handle")

					 v.Handle.CanCollide = true

					 if v:FindFirstChildWhichIsA("DataModelMesh", true) then

						 v:FindFirstChildWhichIsA("DataModelMesh", true):Destroy()

					 end

					 v.Parent = workspace

					 table.insert(grabbed, v)

				 end

			 end

			 hatAmount = hatAmount + 1

		 end

		 character:ClearAllChildren()

		 respawn()

		 wait()

	 until

		 hatAmount >= amt

	 

	 repeat wait() until tostring(localPlayer.Character) ~= "respawn_" and localPlayer.Character

	 wait(0.5)

	 

	 spawn(function()

		 repeat wait() until character.PrimaryPart

		 wait(0.2)

		 character:SetPrimaryPartCFrame(lastCF)

		 

		 for _, item in pairs(grabbed) do

			 if item:IsA("Accoutrement") and item:FindFirstChild("Handle") then

				 item.Parent = workspace

				 wait()

			 end

		 end

	 end)

 end)

 

 cmd.add({"hitboxes"}, {"hitboxes", "shows all the hitboxes"}, function()

 settings():GetService("RenderSettings").ShowBoundingBoxes = true

 end)

 

 cmd.add({"unhitboxes"}, {"unhitboxes", "removes the hitboxes outline"}, function()

 settings():GetService("RenderSettings").ShowBoundingBoxes = false

 end)

 

 cmd.add({"punch"}, {"punch", "punch tool that flings"}, function()

 loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/punch",true))()

 end)

 

 cmd.add({"vfly", "vehiclefly"}, {"vehiclefly (vfly)", "be able to fly vehicles"}, function(...)

 FLYING = false

	 cmdlp.Character.Humanoid.PlatformStand = false

	 wait()

 

		 

		 

		 wait();

		 

		 Notify({

		 Description = "Vehicle fly enabled";

		 Title = "Nameless Admin";

		 Duration = 5;

	 

 });

	 sFLY(true)

	 speedofthevfly = (...)

	 if (...) == nil then

		 speedofthevfly = 2

		 end

 end)

 

 cmd.add({"unvfly", "unvehiclefly"}, {"unvehiclefly (unvfly)", "disable vehicle fly"}, function()

 

		 

		 

		 wait();

		 

		 Notify({

		 Description = "Vehicle fly disabled";

		 Title = "Nameless Admin";

		 Duration = 5;

	 

 });

 FLYING = false

	 cmdlp.Character.Humanoid.PlatformStand = false

 end)

 

 cmd.add({"trap"}, {"trap", "makes your tool be away from you making it look like its dropped"}, function()

 

 local function Kill(humanoid)

	 if not humanoid then

		 return

	 end

	 local function getPlr(Name)

		 if Name:lower() == "random" then

			 return game.Players:GetPlayers()[math.random(#game.Players:GetPlayers())]

		 else

			 Name = Name:lower():gsub("%s", "")

			 for _, x in next, game.Players:GetPlayers() do

				 if x.Name:lower():match(Name) then

					 return x

				 elseif x.DisplayName:lower():match("^" .. Name) then

					 return x

				 end

			 end

		 end

	 end

 

	 local Character = game.Players.LocalPlayer.Character

	 local Humanoid = Character:FindFirstChildOfClass("Humanoid")

	 local RootPart = Character.HumanoidRootPart

	 local Tool = Character:FindFirstChildOfClass("Tool")

	 local Handle = Tool and Tool:FindFirstChild("Handle")

 

	 if not Handle then

		 return

	 end

 

	 local TPlayer = getPlr(humanoid.Parent.Name)

	 local TCharacter = TPlayer and TPlayer.Character

	 local THumanoid = TCharacter and TCharacter:FindFirstChildOfClass("Humanoid")

	 local TRootPart = THumanoid and THumanoid.RootPart

 

	 if not TPlayer or not TCharacter or not THumanoid or not TRootPart then

		 return

	 end

 

	 if THumanoid.Sit then

		 return

	 end

 

	 local OldCFrame = RootPart.CFrame

 

	 Humanoid:Destroy()

	 local NewHumanoid = Humanoid:Clone()

	 NewHumanoid.Parent = Character

	 NewHumanoid:UnequipTools()

	 NewHumanoid:EquipTool(Tool)

	 Tool.Parent = workspace

 

	 local Timer = os.time()

 

	 repeat

		 if (TRootPart.CFrame.p - RootPart.CFrame.p).Magnitude < 500 then

			 Tool.Grip = CFrame.new()

			 Tool.Grip = Handle.CFrame:ToObjectSpace(TRootPart.CFrame):Inverse()

		 end

		 firetouchinterest(Handle, TRootPart, 0)

		 firetouchinterest(Handle, TRootPart, 1)

		 game:FindService("RunService").Heartbeat:wait()

	game:FindService("RunService").Heartbeat:wait()

		   until Tool.Parent ~= Character or not TPlayer or not TRootPart or THumanoid.Health <= 0 or os.time() > Timer + .20

			wait(0.4)

			 Player.Character = nil

			 NewHumanoid.Health = 0

			 player.CharacterAdded:wait(1)

			 repeat game:FindService("RunService").Heartbeat:wait() until Player.Character:FindFirstChild("HumanoidRootPart")

			 Player.Character.HumanoidRootPart.CFrame = OldCFrame

 end

	   

		 if not LoopKill then

			 Kill()

		 else

			 while LoopKill do

				 Kill()

			 end

		 end

 

 local function equipRandomTool()

	 local player = game.Players.LocalPlayer

	 local backpack = player.Backpack

	 local tools = backpack and backpack:GetChildren()

	 if not tools or #tools == 0 then

		 return

	 end

	 local randomTool = tools[math.random(#tools)]

	 randomTool.Grip = CFrame.new(0, 2, 19)

	 player.Character.Humanoid:EquipTool(randomTool)

	 randomTool.Parent = player.Character

	 local handle = randomTool:FindFirstChild("Handle")

	 if handle then

		 handle.Touched:Connect(Kill)

	 end

 end

 

 equipRandomTool()

 end)

 

 cmd.add({"kill"}, {"kill <player>", "after a while i have added a working kill script thats almost instant to this admin"}, function(...)

	 Target = (...)

 

 if Target == "all" or Target == "others" then

	 print("Patched")

 else

 local function Kill()

			 if not getPlr(Target) then

			 end

			 

			 repeat game:FindService("RunService").Heartbeat:wait() until getPlr(Target).Character and getPlr(Target).Character:FindFirstChildOfClass("Humanoid") and getPlr(Target).Character:FindFirstChildOfClass("Humanoid").Health > 0

			 local Character

			 local Humanoid

			 local RootPart

			 local Tool

			 local Handle

			 

			 local TPlayer = getPlr(Target)

			 local TCharacter = TPlayer.Character

			 local THumanoid

			 local TRootPart

			 

			 if Player.Character and Player.Character and Player.Character.Name == Player.Name then

				 Character = Player.Character

			 else

			 end

			 if Character:FindFirstChildOfClass("Humanoid") then

				 Humanoid = Character:FindFirstChildOfClass("Humanoid")

			 else

			 end

			 if Humanoid and Humanoid.RootPart then

				 RootPart = Humanoid.RootPart

			 else

			 end

			 if Character:FindFirstChildOfClass("Tool") then

				 Tool = Character:FindFirstChildOfClass("Tool")

			 elseif Player.Backpack:FindFirstChildOfClass("Tool") and Humanoid then

				 Tool = Player.Backpack:FindFirstChildOfClass("Tool")

				 Humanoid:EquipTool(Player.Backpack:FindFirstChildOfClass("Tool"))

			 else

			 end

			 if Tool and Tool:FindFirstChild("Handle") then

				 Handle = Tool.Handle

			 else

			 end

			 

			 --Target

			 if TCharacter:FindFirstChildOfClass("Humanoid") then

				 THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")

			 else

				 return Message("Error",">   Missing Target Humanoid")

			 end

			 if THumanoid.RootPart then

				 TRootPart = THumanoid.RootPart

			 else

				 return Message("Error",">   Missing Target RootPart")

			 end

			 

			 if THumanoid.Sit then

				 return Message("Error",">   Target is seated")

			 end

			 

			 local OldCFrame = RootPart.CFrame

			 

			 Humanoid:Destroy()

			 local NewHumanoid = Humanoid:Clone()

			 NewHumanoid.Parent = Character

			 NewHumanoid:UnequipTools()

			 NewHumanoid:EquipTool(Tool)

			 Tool.Parent = workspace

		 

			 local Timer = os.time()

		 

			 repeat

				 if (TRootPart.CFrame.p - RootPart.CFrame.p).Magnitude < 500 then

					 Tool.Grip = CFrame.new()

					 Tool.Grip = Handle.CFrame:ToObjectSpace(TRootPart.CFrame):Inverse()

				 end

				 firetouchinterest(Handle,TRootPart,0)

				 firetouchinterest(Handle,TRootPart,1)

				 game:FindService("RunService").Heartbeat:wait()

			 until Tool.Parent ~= Character or not TPlayer or not TRootPart or THumanoid.Health <= 0 or os.time() > Timer + .20

			 Player.Character = nil

			 NewHumanoid.Health = 0

			 player.CharacterAdded:wait(1)

			 repeat game:FindService("RunService").Heartbeat:wait() until Player.Character:FindFirstChild("HumanoidRootPart")

			 Player.Character.HumanoidRootPart.CFrame = OldCFrame

 end

	   

		 if not LoopKill then

			 Kill()

		 else

			 while LoopKill do

				 Kill()

			 end

		 end

		  end

 end)

 

 cmd.add({"toolblockspam"}, {"toolblockspam [amount]", "Spawn blocks by the given amount"}, function(amt)

	 if not amt then amt = 1 end

	 amt = tonumber(amt)

	 local tools = getTools(amt)

	 for i, tool in pairs(tools) do

		 wait()

		 spawn(function()

			 wait(0.1)

			 tool.Parent = character

			 tool.CanBeDropped = true

			 wait(0.1)

			 for _, mesh in pairs(tool:GetDescendants()) do

				 if mesh:IsA("DataModelMesh") then

					 mesh:Destroy()

				 end

			 end

			 for _, weld in pairs(character:GetDescendants()) do

				 if weld.Name == "RightGrip" then

					 weld:Destroy()

				 end

			 end

			 wait(0.1)

			 tool.Parent = workspace

			 wait(0.1)

			 local cf, p = CFrame.new(), character:FindFirstChild("HumanoidRootPart") or character:FindFirstChild("Head")

	 if p then

		 cf = p.CFrame

	 end

	 respawn()

	 player.CharacterAdded:wait(1); wait(0.2);

	 character:WaitForChild("HumanoidRootPart").CFrame = cf

		 end)

	 end

 end)

 

 cmd.add({"equiptools", "equipall"}, {"equiptools", "Equip all of your tools"}, function()

	 local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

	 if backpack then

		 for _, tool in pairs(backpack:GetChildren()) do

			 if tool:IsA("Tool") then

				 tool.Parent = character

			 end

		 end

	 end

 end)

 

 cmd.add({"tweento", "tweengoto"}, {"tweengoto (tweento)", "Teleportation method that bypassses some anticheats"}, function(...)

 local Username = (...)

 

 

 char = game.Players.LocalPlayer

 

 TweenService = game:GetService("TweenService")

 

 speaker = game.Players.LocalPlayer

 Players = game:GetService("Players")

	 

	 local players = getPlr(Username)

			 TweenService:Create(getRoot(speaker.Character), TweenInfo.new(2, Enum.EasingStyle.Linear), {CFrame = getRoot(players.Character).CFrame + Vector3.new(3,1,0)}):Play()

	 

 end)

 

 cmd.add({"reach"}, {"reach {number}", "Sword reach"}, function(reachsize)

	 local reachsize = reachsize or 25

	 local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or Player.Backpack:FindFirstChildOfClass("Tool")

	 if Tool:FindFirstChild("OGSize3") then

		 Tool.Handle.Size = Tool.OGSize3.Value

		 Tool.OGSize3:Destroy()

		 Tool.Handle.FunTIMES:Destroy()

	 end

	 local val = Instance.new("Vector3Value",Tool)

	 val.Name = "OGSize3"

	 val.Value = Tool.Handle.Size

	 local sb = Instance.new("SelectionBox")

	 sb.Adornee = Tool.Handle

	 sb.Name = "FunTIMES"

	 sb.Parent = Tool.Handle

	 Tool.Handle.Massless = true

	 Tool.Handle.Size = Vector3.new(Tool.Handle.Size.X,Tool.Handle.Size.Y,reachsize)

 end)

 

 cmd.add({"aura"}, {"aura {number}", "Sword aura"}, function(reachsize)

	 local reachsize = reachsize or 25

	 local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")

	 if Tool:FindFirstChild("OGSize3") then

		 Tool.Handle.Size = Tool.OGSize3.Value

		 Tool.OGSize3:Destroy()

		 Tool.Handle.FunTIMES:Destroy()

	 end

	 local val = Instance.new("Vector3Value",Tool)

	 val.Name = "OGSize3"

	 val.Value = Tool.Handle.Size

	 local sb = Instance.new("SelectionBox")

	 sb.Adornee = Tool.Handle

	 sb.Name = "FunTIMES"

	 sb.Transparency = 0.5

	 sb.Parent = Tool.Handle

	 Tool.Handle.Massless = true

	 Tool.Handle.Size = Vector3.new(reachsize,reachsize,reachsize)

 end)

 

 cmd.add({"droptools"}, {"dropalltools", "Drop all of your tools"}, function()

	 local backpack = localPlayer:FindFirstChildWhichIsA("Backpack")

	 if backpack then

		 for _, tool in pairs(backpack:GetChildren()) do

			 if tool:IsA("Tool") then

				 tool.Parent = character

			 end

		 end

	 end

	 wait()

	 for _, tool in pairs(character:GetChildren()) do

		 if tool:IsA("Tool") then

			 tool.Parent = workspace

		 end

	 end

	 end)

 

 cmd.add({"notools"}, {"notools", "Remove your tools"}, function()

	 for _, tool in pairs(character:GetChildren()) do

		 if tool:IsA("Tool") then

			 tool:Destroy()

		 end

	 end

	 for _, tool in pairs(localPlayer.Backpack:GetChildren()) do

		 if tool:IsA("Tool") then

			 tool:Destroy()

		 end

	 end

 end)

 

 cmd.add({"breaklayeredclothing", "blc"}, {"breaklayeredclothing (blc)", "Streches your layered clothing"}, function()

	-- its literally just leg resize with swim

 wait();

 

 Notify({

 Description = "Break layered clothing executed, if you havent already equip shirt, jacket, pants and shoes (Layered Clothing ones)";

 Title = "Nameless Admin";

 Duration = 5;

 

 });

 local swimming = false

 local RunService = game:GetService("RunService")

 oldgrav = workspace.Gravity

 workspace.Gravity = 0

 local char = game.Players.LocalPlayer.Character

 local swimDied = function()

 workspace.Gravity = oldgrav

 swimming = false

 end

 local Humanoid = char:FindFirstChildWhichIsA("Humanoid")

 gravReset = Humanoid.Died:Connect(swimDied)

 local enums = Enum.HumanoidStateType:GetEnumItems()

 table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))

 for i, v in pairs(enums) do

 Humanoid:SetStateEnabled(v, false)

 end

 Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)

 swimbeat = RunService.Heartbeat:Connect(function()

 pcall(function()

 char.HumanoidRootPart.Velocity = ((Humanoid.MoveDirection ~= Vector3.new() or UserInputService:IsKeyDown(Enum.KeyCode.Space)) and char.HumanoidRootPart.Velocity or Vector3.new())

 end)

 end)

 swimming = true

 local Clip = false

 wait(0.1)

 local function NoclipLoop()

 if Clip == false and char ~= nil then

 for _, child in pairs(char:GetDescendants()) do

 if child:IsA("BasePart") and child.CanCollide == true then

 child.CanCollide = false

 end

 end

 end

 end

 Noclipping = RunService.Stepped:Connect(NoclipLoop)

 loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Leg%20Resize'))()

 end)



 

 cmd.add({"fpsbooster", "lowgraphics", "boostfps", "lowg"}, {"fpsbooster (lowgraphics, boostfps, lowg)", "Low graphics mode if the game is laggy"}, function()

	 local decalsyeeted = true

	 local g = game

	 local w = g.Workspace

	 local l = g.Lighting

	 local t = w.Terrain

	 sethiddenproperty(l,"Technology",2)

	 sethiddenproperty(t,"Decoration",false)

	 t.WaterWaveSize = 0

	 t.WaterWaveSpeed = 0

	 t.WaterReflectance = 0

	 t.WaterTransparency = 0

	 l.GlobalShadows = 0

	 l.FogEnd = 9e9

	 l.Brightness = 0

	 settings().Rendering.QualityLevel = "Level01"

	 for i, v in pairs(w:GetDescendants()) do

		 if v:IsA("BasePart") and not v:IsA("MeshPart") then

			 v.Material = "Plastic"

			 v.Reflectance = 0

		 elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then

			 v.Transparency = 1

		 elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then

			 v.Lifetime = NumberRange.new(0)

		 elseif v:IsA("Explosion") then

			 v.BlastPressure = 1

			 v.BlastRadius = 1

		 elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then

			 v.Enabled = false

		 elseif v:IsA("MeshPart") and decalsyeeted then

			 v.Material = "Plastic"

			 v.Reflectance = 0

			 v.TextureID = 10385902758728957

		 elseif v:IsA("SpecialMesh") and decalsyeeted  then

			 v.TextureId=0

		 elseif v:IsA("ShirtGraphic") and decalsyeeted then

			 v.Graphic=0

		 elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then

			 v[v.ClassName.."Template"]=0

		 end

	 end

	 for i = 1,#l:GetChildren() do

		 e=l:GetChildren()[i]

		 if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then

			 e.Enabled = false

		 end

	 end

	 w.DescendantAdded:Connect(function(v)

		 wait()--prevent errors and shit

		if v:IsA("BasePart") and not v:IsA("MeshPart") then

			 v.Material = "Plastic"

			 v.Reflectance = 0

		 elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then

			 v.Transparency = 1

		 elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then

			 v.Lifetime = NumberRange.new(0)

		 elseif v:IsA("Explosion") then

			 v.BlastPressure = 1

			 v.BlastRadius = 1

		 elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then

			 v.Enabled = false

		 elseif v:IsA("MeshPart") and decalsyeeted then

			 v.Material = "Plastic"

			 v.Reflectance = 0

			 v.TextureID = 10385902758728957

		 elseif v:IsA("SpecialMesh") and decalsyeeted then

			 v.TextureId=0

		 elseif v:IsA("ShirtGraphic") and decalsyeeted then

			 v.ShirtGraphic=0

		 elseif (v:IsA("Shirt") or v:IsA("Pants")) and decalsyeeted then

			 v[v.ClassName.."Template"]=0

		 end

	 end)

 end)

 

 cmd.add({"vr", "clovr", "vrscript", "fevr"}, {"vr (clovr, vrscript, fevr)", "FE VR SCRIPT AKA CLOVR"}, function()

	-- [[ should be patched ]] --

 loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/CloVR"))();

 end)

 

 cmd.add({"flash"}, {"flash <player>", "Flashes the targets screen"}, function(...)

			 local oldCF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

 

 Target = (...)

 local TPlayer = getPlr(Target)

				TRootPart = TPlayer.Character.HumanoidRootPart

				local Character = Player.Character

				local PlayerGui = Player:WaitForChild("PlayerGui")

				local Backpack = Player:WaitForChild("Backpack")

				local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid") or false

				local RootPart = Character and Humanoid and Humanoid.RootPart or false

				local RightArm = Character and Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand")

				if not Humanoid or not RootPart or not RightArm then

					return

				end

				Humanoid:UnequipTools()

				local MainTool = Backpack:FindFirstChildWhichIsA("Tool") or false

				if not MainTool or not MainTool:FindFirstChild("Handle") then

					return

				end

				Humanoid.Name = "DAttach"

				local l = Character["DAttach"]:Clone()

				l.Parent = Character

				l.Name = "Humanoid"

				wait()

				Character["DAttach"]:Destroy()

				game.Workspace.CurrentCamera.CameraSubject = Character

				Character.Animate.Disabled = true

				wait()

				Character.Animate.Disabled = false

				Character.Humanoid:EquipTool(MainTool)

				wait()

				CF = Player.Character.PrimaryPart.CFrame

				if firetouchinterest then

					local flag = false

					task.defer(function()

						MainTool.Handle.AncestryChanged:wait()

						flag = true

					end)

					repeat

						firetouchinterest(MainTool.Handle, TRootPart, 0)

						firetouchinterest(MainTool.Handle, TRootPart, 1)

						wait()

					until flag

							 for i= 1,50,1 do

				 print('pee'..i)

				 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,9e+18,0)

				 wait(.04)

				 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCF

				 wait(.04)

				 end

				else

					Player.Character.HumanoidRootPart.CFrame =

					TCharacter.HumanoidRootPart.CFrame

					wait()

					Player.Character.HumanoidRootPart.CFrame =

					TCharacter.HumanoidRootPart.CFrame

					wait()

				end

				player.CharacterAdded:wait(1):waitForChild("HumanoidRootPart").CFrame = CF

 end)

 

 cmd.add({"void"}, {"void <player>", "Kill the given players without FE god"}, function(...)

	 Target = (...)

 local Character = Player.Character

 local PlayerGui = Player:waitForChild("PlayerGui")

 local Backpack = Player:waitForChild("Backpack")

 local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid") or false

 local RootPart = Character and Humanoid and Humanoid.RootPart or false

 local RightArm = Character and Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand")

 if not Humanoid or not RootPart or not RightArm then

 return

 end

 

 Humanoid:UnequipTools()

 local MainTool = Backpack:FindFirstChildWhichIsA("Tool") or false

 if not MainTool or not MainTool:FindFirstChild("Handle") then

 return

 end

 

 local TPlayer = getPlr(Target)

 local TCharacter = TPlayer and TPlayer.Character

 

 local THumanoid = TCharacter and TCharacter:FindFirstChildWhichIsA("Humanoid") or false

 local TRootPart = TCharacter and THumanoid and THumanoid.RootPart or false

 if not THumanoid or not TRootPart then

 return

 end

 

 Character.Humanoid.Name = "DAttach"

 local l = Character["DAttach"]:Clone()

 l.Parent = Character

 l.Name = "Humanoid"

 wait()

 Character["DAttach"]:Destroy()

 game.Workspace.CurrentCamera.CameraSubject = Character

 Character.Animate.Disabled = true

 wait()

 Character.Animate.Disabled = false

 Character.Humanoid:EquipTool(MainTool)

 wait()

 CF = Player.Character.PrimaryPart.CFrame

 XC = TCharacter.HumanoidRootPart.CFrame.X

 ZC = TCharacter.HumanoidRootPart.CFrame.Z

 if firetouchinterest then

 local flag = false

 task.defer(function()

	 MainTool.Handle.AncestryChanged:wait()

	 flag = true

 end)

 repeat

	 firetouchinterest(MainTool.Handle, TRootPart, 0)

	 firetouchinterest(MainTool.Handle, TRootPart, 1)

	 wait()

 until flag

				 wait(0.2)

 Player.Character.HumanoidRootPart.CFrame = CFrame.new(0,-1000,0)

 else

 Player.Character.HumanoidRootPart.CFrame =

 TCharacter.HumanoidRootPart.CFrame

 wait()

 Player.Character.HumanoidRootPart.CFrame =

 TCharacter.HumanoidRootPart.CFrame

 wait()

 Player.Character.HumanoidRootPart.CFrame = CFrame.new(XC,-99,ZC)

 wait()

 end

 wait(.3)

 Player.Character:SetPrimaryPartCFrame(CF)

 if Humanoid.RigType == Enum.HumanoidRigType.R6 then

 Character["Right Arm"].RightGrip:Destroy()

 else

 Character["RightHand"].RightGrip:Destroy()

 Character["RightHand"].RightGripAttachment:Destroy()

 end

 wait(0.02)

 respawn()

 end)

 

 annoyloop = false

 cmd.add({"annoy"}, {"annoy <player>", "Annoys the given player"}, function(...)

	 annoyloop = true

	 User = (...)

	 Target = getPlr(User)

			   local SaveCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

 repeat wait()

					   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame + Vector3.new(math.random(-2,2),math.random(0,2),math.random(-2,2))

					   game:GetService('RunService').RenderStepped:Wait()

					   wait(.1)

			   until annoyloop == false

			   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SaveCFrame

 

 end)

 

 cmd.add({"unannoy"}, {"unannoy", "Stops the annoy command"}, function()

	 annoyloop = false

 end)

 

 cmd.add({"seat"}, {"seat", "Finds a seat and automatically sits on it"}, function()

		local seats = {}

		 for i,v in next, game:GetDescendants() do

				 if v:IsA'Seat' then

						 table.insert(seats, v)

				 end

		 end

		 wait(0.07)

		 for i=1, 8 do

		 seats[math.random(1, #seats)]:Sit(game.Players.LocalPlayer.Character.Humanoid)

		 end

		 end)

 

 cmd.add({"banish", "punish", "jail"}, {"punish <player> (banish, jail)", "Banishes the player using a void script, can make them not respawn if the game is old"}, function(...)

   Target = (...)

 local TPlayer = getPlr(Target)

				TRootPart = TPlayer.Character.HumanoidRootPart

				local Character = Player.Character

				local PlayerGui = Player:WaitForChild("PlayerGui")

				local Backpack = Player:WaitForChild("Backpack")

				local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid") or false

				local RootPart = Character and Humanoid and Humanoid.RootPart or false

				local RightArm = Character and Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand")

				if not Humanoid or not RootPart or not RightArm then

					return

				end

				Humanoid:UnequipTools()

				local MainTool = Backpack:FindFirstChildWhichIsA("Tool") or false

				if not MainTool or not MainTool:FindFirstChild("Handle") then

					return

				end

				Humanoid.Name = "DAttach"

				local l = Character["DAttach"]:Clone()

				l.Parent = Character

				l.Name = "Humanoid"

				wait()

				Character["DAttach"]:Destroy()

				game.Workspace.CurrentCamera.CameraSubject = Character

				Character.Animate.Disabled = true

				wait()

				Character.Animate.Disabled = false

				Character.Humanoid:EquipTool(MainTool)

				wait()

				CF = Player.Character.PrimaryPart.CFrame

				if firetouchinterest then

					local flag = false

					task.defer(function()

						MainTool.Handle.AncestryChanged:wait()

						flag = true

					end)

					repeat

						firetouchinterest(MainTool.Handle, TRootPart, 0)

						firetouchinterest(MainTool.Handle, TRootPart, 1)

						wait()

					until flag

								 Player.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000, 1000000000000000000000, -100000))

				else

					Player.Character.HumanoidRootPart.CFrame =

					TCharacter.HumanoidRootPart.CFrame

					wait()

					Player.Character.HumanoidRootPart.CFrame =

					TCharacter.HumanoidRootPart.CFrame

					wait()

				end

				player.CharacterAdded:wait(1):waitForChild("HumanoidRootPart").CFrame = CF

 end)

 

 massplay = false

 cmd.add({"sync"}, {"sync", "Syncs all in-game audios"}, function()

 massplay = true

 if game:GetService("SoundService").RespectFilteringEnabled == false then

 repeat wait() do 

 for _, sound in next, game.Workspace:GetDescendants() do

 if sound:IsA("Sound") then

 sound.Volume = 10

 sound:Play()

 end

 end

 end

 until massplay == false

 else

 Notify({

 Description = "Sorry, wont replicate for this game, try another game.";

 Title = "Nameless Admin";

 Duration = 5;

 

 });

 end

 end)

 

 cmd.add({"unsync"}, {"unsync", "Unsyncs all in-game audios"}, function()

	 massplay = false

 end)

 

 cmd.add({"infvoid"}, {"infvoid <player>", "Makes a players avatar glitch"}, function(...)

	 Target = (...)

	 local TPlayer = getPlr(Target)

				TRootPart = TPlayer.Character.HumanoidRootPart

				local Character = Player.Character

				local PlayerGui = Player:WaitForChild("PlayerGui")

				local Backpack = Player:WaitForChild("Backpack")

				local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid") or false

				local RootPart = Character and Humanoid and Humanoid.RootPart or false

				local RightArm = Character and Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand")

				if not Humanoid or not RootPart or not RightArm then

					return

				end

				Humanoid:UnequipTools()

				local MainTool = Backpack:FindFirstChildWhichIsA("Tool") or false

				if not MainTool or not MainTool:FindFirstChild("Handle") then

					return

				end

				Humanoid.Name = "DAttach"

				local l = Character["DAttach"]:Clone()

				l.Parent = Character

				l.Name = "Humanoid"

				wait()

				Character["DAttach"]:Destroy()

				game.Workspace.CurrentCamera.CameraSubject = Character

				Character.Animate.Disabled = true

				wait()

				Character.Animate.Disabled = false

				Character.Humanoid:EquipTool(MainTool)

				wait()

				CF = Player.Character.PrimaryPart.CFrame

				if firetouchinterest then

					local flag = false

					task.defer(function()

						MainTool.Handle.AncestryChanged:wait()

						flag = true

					end)

					repeat

						firetouchinterest(MainTool.Handle, TRootPart, 0)

						firetouchinterest(MainTool.Handle, TRootPart, 1)

						wait()

					until flag

				else

					Player.Character.HumanoidRootPart.CFrame =

					TCharacter.HumanoidRootPart.CFrame

					wait()

					Player.Character.HumanoidRootPart.CFrame =

					TCharacter.HumanoidRootPart.CFrame

					wait()

				end

				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111111110, 11111110, 11111110)

 end)

 

 cmd.add({"attach"}, {"attach <player>", "Attach the given player(s)"}, function(...)

	 Target = (...)

	 local TPlayer = getPlr(Target)

				TRootPart = TPlayer.Character.HumanoidRootPart

				local Character = Player.Character

				local PlayerGui = Player:WaitForChild("PlayerGui")

				local Backpack = Player:WaitForChild("Backpack")

				local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid") or false

				local RootPart = Character and Humanoid and Humanoid.RootPart or false

				local RightArm = Character and Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand")

				if not Humanoid or not RootPart or not RightArm then

					return

				end

				Humanoid:UnequipTools()

				local MainTool = Backpack:FindFirstChildWhichIsA("Tool") or false

				if not MainTool or not MainTool:FindFirstChild("Handle") then

					return

				end

				Humanoid.Name = "DAttach"

				local l = Character["DAttach"]:Clone()

				l.Parent = Character

				l.Name = "Humanoid"

				wait()

				Character["DAttach"]:Destroy()

				game.Workspace.CurrentCamera.CameraSubject = Character

				Character.Animate.Disabled = true

				wait()

				Character.Animate.Disabled = false

				Character.Humanoid:EquipTool(MainTool)

				wait()

				CF = Player.Character.PrimaryPart.CFrame

				if firetouchinterest then

					local flag = false

					task.defer(function()

						MainTool.Handle.AncestryChanged:wait()

						flag = true

					end)

					repeat

						firetouchinterest(MainTool.Handle, TRootPart, 0)

						firetouchinterest(MainTool.Handle, TRootPart, 1)

						wait()

					until flag

				else

					Player.Character.HumanoidRootPart.CFrame =

					TCharacter.HumanoidRootPart.CFrame

					wait()

					Player.Character.HumanoidRootPart.CFrame =

					TCharacter.HumanoidRootPart.CFrame

					wait()

				end

				player.CharacterAdded:wait(1):waitForChild("HumanoidRootPart").CFrame = CF

	

 end)

 

 cmd.add({"enableinventory", "enableinv"}, {"enableinv (enableinventory)", "Lets you see what you have in your inventory since some games hide it"}, function(...)

	 game.StarterGui:SetCoreGuiEnabled(2, true)

 end)

 

 cmd.add({"copytools", "ctools"}, {"copytools <player> (ctools)", "Copies the tools the given player has"}, function(...)

	 PLAYERNAMEHERE = (...)

	 Target = getPlr(PLAYERNAMEHERE)

	 for i, v in pairs(Target.Backpack:GetChildren()) do

		 if v:IsA("Tool") or v:IsA('HopperBin') then

			 v:Clone().Parent = game.Players.LocalPlayer:FindFirstChildOfClass("Backpack")

		 end

		 end

	 end)

 

 cmd.add({"bring"}, {"bring <player>", "Bring the given player(s)"}, function(...)

	 local Target = (...) 

	 if Target == "all" or Target == "others" then

 print("Patched")

 end

			 local Character = Player.Character        

			 local PlayerGui = Player:waitForChild("PlayerGui")

			 local Backpack = Player:waitForChild("Backpack")

			 local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid") or false

			 local RootPart = Character and Humanoid and Humanoid.RootPart or false

			 local RightArm = Character and Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand")

			 if not Humanoid or not RootPart or not RightArm then

				 return

			 end

			 Humanoid:UnequipTools()

			 local MainTool = Backpack:FindFirstChildWhichIsA("Tool") or false

			 if not MainTool or not MainTool:FindFirstChild("Handle") then

				 return

			 end

			 local TPlayer = getPlr(Target)

			 local TCharacter = TPlayer and TPlayer.Character

			 local THumanoid = TCharacter and TCharacter:FindFirstChildWhichIsA("Humanoid") or false

			 local TRootPart = TCharacter and THumanoid and THumanoid.RootPart or false

			 if not THumanoid or not TRootPart then

				 return

			 end

			 Character.Humanoid.Name = "DAttach"

			 local l = Character["DAttach"]:Clone()

			 l.Parent = Character

			 l.Name = "Humanoid"

			 wait()

			 Character["DAttach"]:Destroy()

			 game.Workspace.CurrentCamera.CameraSubject = Character

			 Character.Animate.Disabled = true

			 wait()

			 Character.Animate.Disabled = false

			 Character.Humanoid:EquipTool(MainTool)

			 wait()

			 CF = Player.Character.PrimaryPart.CFrame

			 if firetouchinterest then

				 local flag = false

				 task.defer(function()

					 MainTool.Handle.AncestryChanged:wait()

					 flag = true

				 end)

				 repeat

					 firetouchinterest(MainTool.Handle, TRootPart, 0)

					 firetouchinterest(MainTool.Handle, TRootPart, 1)

					 wait()

					 Player.Character.HumanoidRootPart.CFrame = CF

				 until flag

			 else

				 Player.Character.HumanoidRootPart.CFrame =

				 TCharacter.HumanoidRootPart.CFrame

				 wait()

				 Player.Character.HumanoidRootPart.CFrame =

				 TCharacter.HumanoidRootPart.CFrame

				 wait()

				 Player.Character.HumanoidRootPart.CFrame = CF

				 wait()

			 end

			 wait(.3)

			 Player.Character:SetPrimaryPartCFrame(CF)

			 if Humanoid.RigType == Enum.HumanoidRigType.R6 then

				 Character["Right Arm"].RightGrip:Destroy()

			 else

				 Character["RightHand"].RightGrip:Destroy()

				 Character["RightHand"].RightGripAttachment:Destroy()

			 end

				 

			 wait(4)

			 CF = Player.Character.HumanoidRootPart.CFrame

			 player.CharacterAdded:wait(1):waitForChild("HumanoidRootPart").CFrame = CF

 end)

 

 cmd.add({"skydive", "sky"}, {"skydive <player> (sky)", "Skydives the player"}, function(...)

	 local Target = (...)

			 local Character = Player.Character

			 local PlayerGui = Player:waitForChild("PlayerGui")

			 local Backpack = Player:waitForChild("Backpack")

			 local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid") or false

			 local RootPart = Character and Humanoid and Humanoid.RootPart or false

			 local RightArm = Character and Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand")

			 if not Humanoid or not RootPart or not RightArm then

				 return

			 end

			 

			 local getPlr = function(Name)

				 for x in string.gmatch(Name, "[%a%d%p]+") do

					 Name = x:lower()

					 break

				 end

				 local TPlayer = nil

				 for _, x in next, Players:GetPlayers() do

					 if tostring(x):lower():match(Name) or x["DisplayName"]:lower():match(Name) then

						 TPlayer = x

						 break

					 end

				 end

				 return TPlayer

			 end

			 

			 Humanoid:UnequipTools()

			 local MainTool = Backpack:FindFirstChildWhichIsA("Tool") or false

			 if not MainTool or not MainTool:FindFirstChild("Handle") then

				 return

			 end

			 

			 local TPlayer = getPlr(Target)

			 local TCharacter = TPlayer and TPlayer.Character

			 

			 local THumanoid = TCharacter and TCharacter:FindFirstChildWhichIsA("Humanoid") or false

			 local TRootPart = TCharacter and THumanoid and THumanoid.RootPart or false

			 if not THumanoid or not TRootPart then

				 return

			 end

			 

			 Character.Humanoid.Name = "DAttach"

			 local l = Character["DAttach"]:Clone()

			 l.Parent = Character

			 l.Name = "Humanoid"

			 wait()

			 Character["DAttach"]:Destroy()

			 game.Workspace.CurrentCamera.CameraSubject = Character

			 Character.Animate.Disabled = true

			 wait()

			 Character.Animate.Disabled = false

			 Character.Humanoid:EquipTool(MainTool)

			 wait()

			 CF = Player.Character.PrimaryPart.CFrame

			 XC = TCharacter.HumanoidRootPart.CFrame.X

			 ZC = TCharacter.HumanoidRootPart.CFrame.Z

			 if firetouchinterest then

				 local flag = false

				 task.defer(function()

					 MainTool.Handle.AncestryChanged:wait()

					 flag = true

				 end)

				 repeat

					 firetouchinterest(MainTool.Handle, TRootPart, 0)

					 firetouchinterest(MainTool.Handle, TRootPart, 1)

					 wait()

					 Player.Character.HumanoidRootPart.CFrame = CFrame.new(XC,10000,ZC)

				 until flag

			 else

				 Player.Character.HumanoidRootPart.CFrame =

				 TCharacter.HumanoidRootPart.CFrame

				 wait()

				 Player.Character.HumanoidRootPart.CFrame =

				 TCharacter.HumanoidRootPart.CFrame

				 wait()

				 Player.Character.HumanoidRootPart.CFrame = CFrame.new(XC,1000,ZC)

				 wait()

			 end

			 wait(.3)

			 Player.Character:SetPrimaryPartCFrame(CF)

			 if Humanoid.RigType == Enum.HumanoidRigType.R6 then

				 Character["Right Arm"].RightGrip:Destroy()

			 else

				 Character["RightHand"].RightGrip:Destroy()

				 Character["RightHand"].RightGripAttachment:Destroy()

			 end

				 

			 wait(4)

			 CF = Player.Character.HumanoidRootPart.CFrame

			 player.CharacterAdded:wait(1):waitForChild("HumanoidRootPart").CFrame = CF

 end)

 

 cmd.ad
