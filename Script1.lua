setsimulationradius(math.huge, math.huge) 

 

local mouse = game.Players.LocalPlayer:GetMouse() 

 

game.Players.LocalPlayer.Character.Archivable = true 

game.Players.LocalPlayer.Character.Animate.Disabled = true 

local clonec = game.Players.LocalPlayer.Character:Clone() 

clonec.Parent = workspace 

clonec.Name = "POOCLONE" 

clonec.Humanoid.HipHeight = -1.2 -- change this to look taller. 

game.Players.LocalPlayer.Character = clonec 

clonec.Animate.Disabled = false 

 

workspace.Camera.CameraSubject = clonec.Humanoid 

game.Players.LocalPlayer.Character = workspace[game.Players.LocalPlayer.Name] 

game.Players.LocalPlayer.Character.Animate.Disabled = true 

---game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true 

game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy() 

 

spawn(function() 

 

 

while true do 

if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then 

clonec.Humanoid.Jump = game.Players.LocalPlayer.Character.Humanoid.Jump 

 

local veco = workspace.Camera.CFrame:VectorToObjectSpace(game.Players.LocalPlayer.Character.Humanoid.MoveDirection) 

clonec.Humanoid:Move(veco, true) 

 

end 

wait() 

end 

 

end) 

 

for i,v in pairs(clonec:GetDescendants())do 

 

if v:IsA("Part") then 

v.Transparency = 1 

end 

end 

 

 

 

 

 

local bodyvelocity = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character["HumanoidRootPart"]) 

bodyvelocity.MaxForce = Vector3.new(9.9999999805064e+18, 9.999999869911e+14, 9.999999869911e+14) 

bodyvelocity.Velocity = Vector3.new(0, 0, 0) 

game:GetService("RunService").Stepped:connect(function() 

 

game.Players.LocalPlayer.Character.Torso.CanCollide = false 

game.Players.LocalPlayer.Character.Head.CanCollide = false 

game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false 

game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true 

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (clonec.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90),0,0)) * CFrame.new(0,-0,-1) 

game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0) 

game.Players.LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0,0,0) 

 

end) 

 

 

 

 

local segments = Instance.new("Folder") 

local part = Instance.new("Part") 

local part_2 = Instance.new("Part") 

 

segments.Name = "segments" 

segments.Parent = workspace 

part.Anchored = true 

part.CanCollide = false 

part.Transparency = 1 

part.Size = Vector3.new(1, 1, 2) 

part.BottomSurface = Enum.SurfaceType.Smooth 

part.BrickColor = BrickColor.new("Alder") 

part.TopSurface = Enum.SurfaceType.Smooth 

part.Color = Color3.new(0.666667, 0.333333, 1) 

part.Parent = segments 

part.Name = "seg1" 

part.CFrame = CFrame.new(-4.1, 2.1, -37.5) 

part_2.Anchored = true 

part_2.CanCollide = false 

part_2.Size = Vector3.new(1, 1, 2) 

part_2.BottomSurface = Enum.SurfaceType.Smooth 

part_2.BrickColor = BrickColor.new("Cool yellow") 

part_2.TopSurface = Enum.SurfaceType.Smooth 

part_2.Color = Color3.new(0.992157, 0.917647, 0.552941) 

part_2.Parent = segments 

part_2.CFrame = CFrame.new(-4.1, 2.1, -37.5) 

part_2.Name = "seg2" 

part_2.Transparency = 1 

 

local segments2 = Instance.new("Folder") 

local part = Instance.new("Part") 

local part_2 = Instance.new("Part") 

 

segments2.Name = "segments2" 

segments2.Parent = workspace 

part.Anchored = true 

part.CanCollide = false 

part.Size = Vector3.new(1, 1, 2) 

part.BottomSurface = Enum.SurfaceType.Smooth 

part.BrickColor = BrickColor.new("Alder") 

part.TopSurface = Enum.SurfaceType.Smooth 

part.Name = "seg1" 

part.Color = Color3.new(0.666667, 0.333333, 1) 

part.Parent = segments2 

part.CFrame = CFrame.new(-4.1, 2.1, -37.5) 

part_2.Anchored = true 

part_2.CanCollide = false 

part_2.Size = Vector3.new(1, 1, 2) 

part_2.BottomSurface = Enum.SurfaceType.Smooth 

part_2.BrickColor = BrickColor.new("Alder") 

part_2.TopSurface = Enum.SurfaceType.Smooth 

part_2.Color = Color3.new(0.666667, 0.333333, 1) 

part_2.Parent = segments2 

part_2.CFrame = CFrame.new(-4.1, 2.1, -37.5) 

part_2.Name = "seg2" 

part_2.Transparency = 1 

part.Transparency = 1 

 

 

 

local leg1 = Instance.new("Part") 

leg1.Anchored = true 

leg1.Size = Vector3.new(0.5, 0.2, 0.5) 

leg1.BottomSurface = Enum.SurfaceType.Smooth 

leg1.Color = Color3.new(0, 1, 0) 

leg1.BrickColor = BrickColor.new("New Yeller") 

leg1.TopSurface = Enum.SurfaceType.Smooth 

leg1.Name = "leg1" 

leg1.Parent = workspace 

leg1.CFrame = CFrame.new(-31.15, 0.1, 8.65) 

leg1.CanCollide = false 

leg1.Transparency = 1 

 

 

 

 

 

local leg1 =workspace.leg1:Clone() 

leg1.Parent = workspace 

 

local leg2= workspace.leg1:Clone() 

leg2.Parent = workspace 

 

local lp = game.Players.LocalPlayer 

local head = game.Players.LocalPlayer.Character.Head 

 

function coffset(x,y,z) 

	return (head.CFrame * CFrame.new(x,y,z)).Position 

end 

 

 

 

 

mouse.KeyDown:connect(function(k) 

 

	if k == "z" then 

 

		leg1.Position = mouse.Hit.Position 

	elseif k == "x" then 

 

 

		leg2.Position = mouse.Hit.Position 

	end 

 

end) 
