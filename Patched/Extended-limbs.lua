 function noplsmesh(hat)
for i,v in next, workspace[game.Players.LocalPlayer.Name][hat]:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
end
local character = game.Players.LocalPlayer.Character
local mode = 1
  game:GetService('RunService').Heartbeat:Connect(function()
    for i,v in pairs(character:GetChildren()) do
        if v:IsA("BasePart") then
            v.Velocity = Vector3.new(30,0,0)
            v.CFrame = v.CFrame
        end
    end
end)
 game:GetService('RunService').Heartbeat:Connect(function()
    for i,v in pairs(character.Humanoid:GetAccessories()) do 
        if not v.Handle:FindFirstChild("AccessoryWeld") then 
            v.Handle.Velocity = Vector3.new(0,35,0)
        end
    end
end)
 sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",99999999999999999999)
 -- // Uses Mizt's bypass \\ --
 Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()
 e = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character.HumanoidRootPart)
e.Velocity = Vector3.new(0,-27.5,0)
e.P = math.huge
e.MaxForce = Vector3.new(0,3000,0)
 local playerss = workspace.non
 local IsDead = false
local StateMover = true
local bbv,bullet
if Bypass == "death" then
	bullet = game.Players.LocalPlayer.Character["HumanoidRootPart"]
	bullet.Transparency = 1
	bullet.Massless = true
	if bullet:FindFirstChildOfClass("Attachment") then
		for _,v in pairs(bullet:GetChildren()) do
			if v:IsA("Attachment") then
				v:Destroy()
			end
		end
	end
	bbv = Instance.new("BodyPosition",bullet)
    bbv.Position = playerss["Right Arm"].CFrame.p
end
 if Bypass == "death" then
coroutine.wrap(function()
	while true do
		if not playerss or not playerss:FindFirstChildOfClass("Humanoid") or playerss:FindFirstChildOfClass("Humanoid").Health <= 0 then IsDead = true; return end
		if StateMover then
			bbv.Position = playerss["Torso"].CFrame.p
    		bullet.Position = playerss["Torso"].CFrame.p
		end
		game:GetService("RunService").RenderStepped:wait()
	end
end)()
end
 bbav = Instance.new("BodyAngularVelocity",bullet)
    bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
    bbav.P = 100000000000000000000000000000
    bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)
 local Highlight = Instance.new("SelectionBox")
Highlight.Adornee = game.Players.LocalPlayer.Character["HumanoidRootPart"]
Highlight.LineThickness=0.05
Highlight.Color3 = Color3.fromRGB(30,255,30)
Highlight.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
Highlight.Name = "RAINBOW"
 hrp = Highlight
 spawn(function()
while true do
srv.Stepped:Wait()
if ded then break end
hrp.Color3 = Color3.new(255/255,0/255,0/255)
for i = 0,255,10 do
wait()
hrp.Color3 = Color3.new(255/255,i/255,0/255)
end
for i = 255,0,-10 do
wait()
hrp.Color3 = Color3.new(i/255,255/255,0/255)
end
for i = 0,255,10 do
wait()
hrp.Color3 = Color3.new(0/255,255/255,i/255)
end
for i = 255,0,-10 do
wait()
hrp.Color3 = Color3.new(0/255,i/255,255/255)
end
for i = 0,255,10 do
wait()
hrp.Color3 = Color3.new(i/255,0/255,255/255)
end
for i = 255,0,-10 do
wait()
hrp.Color3 = Color3.new(255/255,0/255,i/255)
end
end
end)
 IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
 speed = 1
sine = 1
srv = game:GetService('RunService')
 reanim = playerss
 function hatset(yes,part,c1,c0,nm)
reanim[yes].Handle.AccessoryWeld.Part1=reanim[part]
reanim[yes].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[yes].Handle.AccessoryWeld.C0=c0 or CFrame.new()
if nm==true then
noplsmesh(yes)
end
end
 --put the hat script converted here do not put it in loop or it will make ur camera bugged.
hatset('Hat1','Left Leg',CFrame.new(),reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.15+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(100+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-25+0*math.cos(sine/13))),1),true)
hatset('Pink Hair','Right Leg',CFrame.new(),reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.15+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(100+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(25+0*math.cos(sine/13))),1),true)
hatset('LavanderHair','Right Arm',CFrame.new(),reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(-0.5+0*math.cos(sine/13),0.3+0*math.cos(sine/13),1.8+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(35+0*math.cos(sine/13))),1),true)
hatset('Kate Hair','Left Arm',CFrame.new(),reanim['Kate Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0.5+0*math.cos(sine/13),0.3+0*math.cos(sine/13),1.8+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-35+0*math.cos(sine/13))),1),true)
 RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0.5,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(-0.5,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
 coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Root.Velocity.y > 1 then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
--idle clerp here
reanim['Hat1'].Handle.AccessoryWeld.C0 =  reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.15+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(100+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-25+0*math.cos(sine/13))),1)
reanim['Pink Hair'].Handle.AccessoryWeld.C0 = reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-0.15+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(100+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(25+0*math.cos(sine/13))),1)
reanim['LavanderHair'].Handle.AccessoryWeld.C0 = reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(-0.5+0*math.cos(sine/13),0.3+0*math.cos(sine/13),1.8+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(35+0*math.cos(sine/13))),1)
reanim['Kate Hair'].Handle.AccessoryWeld.C0 = reanim['Kate Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0.5+0*math.cos(sine/13),0.3+0*math.cos(sine/13),1.8+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-35+0*math.cos(sine/13))),1)
 NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),2+0*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(-15+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/18),0.6+0*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(25+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(45+8*math.cos(sine/18))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/18),0.6+0*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(25+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(-45+-8*math.cos(sine/18))),.3)
RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(25+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(35+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(25+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-35+0*math.cos(sine/13))),.3)
  elseif Root.Velocity.Magnitude < 20 then -- walk
--walk clerp here
reanim['Hat1'].Handle.AccessoryWeld.C0 = reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(115+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['Pink Hair'].Handle.AccessoryWeld.C0 = reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(115+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['LavanderHair'].Handle.AccessoryWeld.C0 = reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(65+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['Kate Hair'].Handle.AccessoryWeld.C0 = reanim['Kate Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+0*math.cos(sine/13),2+0*math.cos(sine/13))*ANGLES(RAD(65+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
 NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),2+0.01*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-35*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+35*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+35*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-35*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
 elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
srv.RenderStepped:Wait()
end
end)()
