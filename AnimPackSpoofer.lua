local PackageName = "Zombie" -- change to any of these below, R15 or nil for default

local packages = {
    "Astronaut",
    "Bubbly",
    "Confident",
    "Cartoony",
    "Cowboy",
    "Elder",
    "Knight",
    "Levitation",
    "Mage",
    "Ninja",
    "Oldschool",
    "Popstar",
    "Pirate",
    "Patrol",
    "Princess",
    "Robot",
    "R15",
    "Stylish",
    "Sneaky",
    "Superhero",
    "Toy",
    "Vampire",
    "Werewolf",
    "Zombie"
}

local plr = game.Players.LocalPlayer
local char = game.Players.LocalPlayer.Character
local ct = {}
local te = table.insert
local rs = game:GetService("RunService")
local stepped = rs.Stepped
local heartbeat = rs.Heartbeat

local blockhats = {}
local smallhats = {}

for i,v in pairs(char:GetChildren()) do
    if v:IsA("Accessory") then 
        if v.Handle.Size == Vector3.new(1,1,1) then
            table.insert(blockhats,v)
        end
        if v.Name:find("VarietyShades") then
            table.insert(smallhats,v)
        end
    end
end

if #blockhats < 8 or #smallhats < 2 then
    return warn("not enough hats", #blockhats, #smallhats)
end

local netless_Y = Vector3.new(0, 26, 0)
local v3_101 = Vector3.new(1, 0, 1)
local inf = math.huge
local v3_0 = Vector3.new(0,0,0)
local function getNetlessVelocity(realPartVelocity) --change this if you have a better method
    local mag = realPartVelocity.Magnitude
    if (mag > 1) and (mag < 100) then
        local unit = realPartVelocity.Unit
        if (unit.Y > 0.25) or (unit.Y < -0.75) then
            return realPartVelocity * (25.1 / realPartVelocity.Y)
        end
        realPartVelocity = unit * 100
    end
    return (realPartVelocity * v3_101) + netless_Y
end

local function align(Part0, Part1, p, r)
	Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)
    Part0.CFrame = Part1.CFrame
	local att0 = Instance.new("Attachment", Part0)
	att0.Orientation = r or v3_0
	att0.Position = v3_0
	att0.Name = "att0_" .. Part0.Name
	local att1 = Instance.new("Attachment", Part1)
	att1.Orientation = v3_0 
	att1.Position = p or v3_0
	att1.Name = "att1_" .. Part1.Name

	local ape = Instance.new("AlignPosition", att0)
	ape.ApplyAtCenterOfMass = false
	ape.MaxForce = inf
	ape.MaxVelocity = inf
	ape.ReactionForceEnabled = false
	ape.Responsiveness = 200
	ape.Attachment1 = att1
	ape.Attachment0 = att0
	ape.Name = "AlignPositionRtrue"
	ape.RigidityEnabled = true

	local apd = Instance.new("AlignPosition", att0)
	apd.ApplyAtCenterOfMass = false
	apd.MaxForce = inf
	apd.MaxVelocity = inf
	apd.ReactionForceEnabled = false
	apd.Responsiveness = 200
	apd.Attachment1 = att1
	apd.Attachment0 = att0
	apd.Name = "AlignPositionRfalse"
	apd.RigidityEnabled = false

	local ao = Instance.new("AlignOrientation", att0)
	ao.MaxAngularVelocity = inf
	ao.MaxTorque = inf
	ao.PrimaryAxisOnly = false
	ao.ReactionTorqueEnabled = false
	ao.Responsiveness = 200
	ao.Attachment1 = att1
	ao.Attachment0 = att0
	ao.RigidityEnabled = false
    
	if type(getNetlessVelocity) == "function" then
	    local realVelocity = Vector3.new(0,30,0)
        local steppedcon = stepped:Connect(function()
            Part0.Velocity = realVelocity
        end)
        local heartbeatcon = heartbeat:Connect(function()
            realVelocity = Part0.Velocity
            Part0.Velocity = getNetlessVelocity(realVelocity)
        end)
        Part0.Destroying:Connect(function()
            Part0 = nil
            steppedcon:Disconnect()
            heartbeatcon:Disconnect()
        end)
        te(ct,steppedcon)
        te(ct,heartbeatcon)
	end
	
    att0.Orientation = r or v3_0
	att0.Position = v3_0
	att1.Orientation = v3_0 
	att1.Position = p or v3_0
	Part0.CFrame = Part1.CFrame
end

-- for i,v in next, char:GetDescendants() do
--     if v:IsA("BasePart") then 
--         te(ct,game:GetService("RunService").Heartbeat:connect(function()
--             pcall(function()
--                 v.Velocity = Vector3.new(24,24,24)
--                 plr.ReplicationFocus = workspace
--             end)
--         end))
--     end
-- end

function notify(t,tex,dur)
    game.StarterGui:SetCore("SendNotification", {
        Title = t; 
        Text = tex; 
        Duration = dur or 5;
    })
end

local fl = Instance.new("Folder",char);fl.Name="ReanimStorage"

char.Archivable = true


local reanim = game:GetObjects("rbxassetid://7531849760")[1]
reanim.Name="Reanim"

for i,v in next, reanim:GetDescendants() do
    if v:IsA("BasePart") or v:IsA("Decal") then
        v.Transparency = 1 
    end 
    if v:IsA("ParticleEmitter") then
        v.Enabled = false
    end
end

penis = game.Players.RespawnTime + .5
plr.Character = nil
plr.Character = char
char.Humanoid.AutoRotate = false
char.Humanoid.WalkSpeed = 0
char.Humanoid.JumpPower = 0
char.Torso.Anchored = true
notify("Notice", tostring(penis) .. " seconds until reanimation is complete")
wait(penis)
char.Torso.Anchored = false
reanim.Humanoid.HipHeight = 2.1
char.Humanoid.HipHeight = 2.1
char.Animate.Disabled = true
char.Humanoid.Health = 0
--reanim.Humanoid.AutoRotate = false

reanim.Parent = fl
reanim.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame*CFrame.new(0,5,0)

packages["Astronaut"] = { 
    "rbxassetid://891621366",
    "rbxassetid://891633237",
    "rbxassetid://891636393",
    "rbxassetid://891636393",
    "rbxassetid://891627522",
    "rbxassetid://891609353",
    "rbxassetid://891617961",
    "rbxassetid://891639666",
    "rbxassetid://891663592"
}
packages["Bubbly"] = {
    "rbxassetid://910004836",
    "rbxassetid://910009958",
    "rbxassetid://910025107",
    "rbxassetid://910034870",
    "rbxassetid://910016857",
    "rbxassetid://909997997",
    "rbxassetid://910001910",
    "rbxassetid://910028158",
    "rbxassetid://910030921"
}
packages["Confident"] = {
    "rbxassetid://1069977950",
    "rbxassetid://1069987858",
    "rbxassetid://1070001516",
    "rbxassetid://1070017263",
    "rbxassetid://1069984524",
    "rbxassetid://1069946257",
    "rbxassetid://1069973677",
    "rbxassetid://1070009914",
    "rbxassetid://1070012133"
}
packages["Cartoony"] = {
    "rbxassetid://742637544",
    "rbxassetid://742638445",
    "rbxassetid://742638842",
    "rbxassetid://742640026",
    "rbxassetid://742637942",
    "rbxassetid://742636889",
    "rbxassetid://742637151",
    "rbxassetid://742639220",
    "rbxassetid://742639812"
}
packages["Cowboy"] = {
    "rbxassetid://1014390418",
    "rbxassetid://1014398616",
    "rbxassetid://1014401683",
    "rbxassetid://1014421541",
    "rbxassetid://1014394726",
    "rbxassetid://1014380606",
    "rbxassetid://1014384571",
    "rbxassetid://1014406523",
    "rbxassetid://1014411816"
}
packages["Elder"] = {
    "rbxassetid://845397899",
    "rbxassetid://845400520",
    "rbxassetid://845386501",
    "rbxassetid://845403856",
    "rbxassetid://845398858",
    "rbxassetid://845392038",
    "rbxassetid://845396048",
    "rbxassetid://845401742",
    "rbxassetid://845403127"
}
packages["Knight"] = {
    "rbxassetid://657595757",
    "rbxassetid://657568135",
    "rbxassetid://657564596",
    "rbxassetid://657552124",
    "rbxassetid://658409194",
    "rbxassetid://658360781",
    "rbxassetid://657600338",
    "rbxassetid://657560551",
    "rbxassetid://657557095"
}
packages["Levitation"] = {
    "rbxassetid://616006778",
    "rbxassetid://616008087",
    "rbxassetid://616010382",
    "rbxassetid://616013216",
    "rbxassetid://616008936",
    "rbxassetid://616003713",
    "rbxassetid://616005863",
    "rbxassetid://616011509",
    "rbxassetid://616012453"
}
packages["Mage"] = {
    "rbxassetid://707742142",
    "rbxassetid://707855907",
    "rbxassetid://707861613",
    "rbxassetid://707897309",
    "rbxassetid://707853694",
    "rbxassetid://707826056",
    "rbxassetid://707829716",
    "rbxassetid://707876443",
    "rbxassetid://707894699"
}
packages["Ninja"] = {
    "rbxassetid://656117400",
    "rbxassetid://656118341",
    "rbxassetid://656118852",
    "rbxassetid://656121766",
    "rbxassetid://656117878",
    "rbxassetid://656114359",
    "rbxassetid://656115606",
    "rbxassetid://656119721",
    "rbxassetid://656121397"
}
packages["Oldschool"] = {
    "rbxassetid://5319828216",
    "rbxassetid://5319831086",
    "rbxassetid://5319844329",
    "rbxassetid://5319847204",
    "rbxassetid://5319841935",
    "rbxassetid://5319816685",
    "rbxassetid://5319839762",
    "rbxassetid://5319850266",
    "rbxassetid://5319852613"
}
packages["Popstar"] = {
    "rbxassetid://1212900985",
    "rbxassetid://1212954651",
    "rbxassetid://1212980348",
    "rbxassetid://1212980338",
    "rbxassetid://1212954642",
    "rbxassetid://1213044953",
    "rbxassetid://1212900995",
    "rbxassetid://1212852603",
    "rbxassetid://1212998578"
}
packages["Pirate"] = {
    "rbxassetid://750781874",
    "rbxassetid://750782770",
    "rbxassetid://750783738",
    "rbxassetid://750785693",
    "rbxassetid://750782230",
    "rbxassetid://750779899",
    "rbxassetid://750780242",
    "rbxassetid://750784579",
    "rbxassetid://750785176"
}
packages["Patrol"] = {
    "rbxassetid://1149612882",
    "rbxassetid://1150842221",
    "rbxassetid://1150967949",
    "rbxassetid://1151231493",
    "rbxassetid://1150944216",
    "rbxassetid://1148811837",
    "rbxassetid://1148863382",
    "rbxassetid://1151204998",
    "rbxassetid://1151221899"
}
packages["Princess"] = {
    "rbxassetid://941003647",
    "rbxassetid://941013098",
    "rbxassetid://941015281",
    "rbxassetid://941028902",
    "rbxassetid://941008832",
    "rbxassetid://940996062",
    "rbxassetid://941000007",
    "rbxassetid://941018893",
    "rbxassetid://941025398"
}
packages["Robot"] = {
    "rbxassetid://616088211",
    "rbxassetid://616089559",
    "rbxassetid://616091570",
    "rbxassetid://616095330",
    "rbxassetid://616090535",
    "rbxassetid://616086039",
    "rbxassetid://616087089",
    "rbxassetid://616092998",
    "rbxassetid://616094091"
}
packages["R15"] = {
    "rbxassetid://1132473842",
    "rbxassetid://4211218409",
    "rbxassetid://4211220381",
    "rbxassetid://4211223236",
    "rbxassetid://4211219390",
    "rbxassetid://4211214992",
    "rbxassetid://4211216152",
    "rbxassetid://4211221314",
    "rbxassetid://4374694239"
}
packages["Stylish"] = {
    "rbxassetid://616136790",
    "rbxassetid://616138447",
    "rbxassetid://616140816",
    "rbxassetid://616146177",
    "rbxassetid://616139451",
    "rbxassetid://616133594",
    "rbxassetid://616134815",
    "rbxassetid://616143378",
    "rbxassetid://616144772"
}
packages["Sneaky"] = {
    "rbxassetid://1132473842",
    "rbxassetid://1132477671",
    "rbxassetid://1132494274",
    "rbxassetid://1132510133",
    "rbxassetid://1132489853",
    "rbxassetid://1132461372",
    "rbxassetid://1132469004",
    "rbxassetid://1132500520",
    "rbxassetid://1132506407"
}
packages["Superhero"] = {
    "rbxassetid://616111295",
    "rbxassetid://616113536",
    "rbxassetid://616117076",
    "rbxassetid://616122287",
    "rbxassetid://616115533",
    "rbxassetid://616104706",
    "rbxassetid://616108001",
    "rbxassetid://616119360",
    "rbxassetid://616120861"
}
packages["Toy"] = {
    "rbxassetid://782841498",
    "rbxassetid://782845736",
    "rbxassetid://782842708",
    "rbxassetid://782843345",
    "rbxassetid://782847020",
    "rbxassetid://782843869",
    "rbxassetid://782846423",
    "rbxassetid://782844582",
    "rbxassetid://782845186"
}
packages["Vampire"] = {
    "rbxassetid://1083445855",
    "rbxassetid://1083450166",
    "rbxassetid://1083462077",
    "rbxassetid://1083473930",
    "rbxassetid://1083455352",
    "rbxassetid://1083439238",
    "rbxassetid://1083443587",
    "rbxassetid://1083464683",
    "rbxassetid://1083467779"
}
packages["Werewolf"] = {
    "rbxassetid://1083195517",
    "rbxassetid://1083214717",
    "rbxassetid://1083216690",
    "rbxassetid://1083178339",
    "rbxassetid://1083218792",
    "rbxassetid://1083182000",
    "rbxassetid://1083189019",
    "rbxassetid://1083222527",
    "rbxassetid://1083225406"
}
packages["Zombie"] = {
    "rbxassetid://616158929",
    "rbxassetid://616160636",
    "rbxassetid://616163682",
    "rbxassetid://616168032",
    "rbxassetid://616161997",
    "rbxassetid://616156119",
    "rbxassetid://616157476",
    "rbxassetid://616165109",
    "rbxassetid://616166655"
}


-- local function align(part, parent, p, r)
--     local att1 = Instance.new("Attachment",part)
--     local alp = Instance.new("AlignPosition",part)
--     local alo = Instance.new("AlignOrientation",part)
--     local att2 = Instance.new("Attachment",parent)
--     att1.Name = part.Name
--     att2.Name = part.Name
--     alp.Attachment0 = att1
--     alo.Attachment0 = att1
--     alp.Attachment1 = att2
--     alo.Attachment1 = att2
--     att2.Position = p or Vector3.new()
--     att1.Orientation = r or Vector3.new()
--     alp.MaxForce = 999999999
--     alp.MaxVelocity = math.huge
--     alp.ReactionForceEnabled = false
--     alp.Responsiveness = math.huge
--     alo.Responsiveness = math.huge
--     alp.RigidityEnabled = false
--     alo.MaxTorque = 999999999
--     part.Massless = true
-- end

function pos(part, parent, p)
    local att1 = Instance.new("Attachment",part)
    local alp = Instance.new("AlignPosition",part)
    local att2 = Instance.new("Attachment",parent)
    att1.Name = part.Name
    att2.Name = part.Name
    alp.Attachment0 = att1
    alp.Attachment1 = att2
    att2.Position = p or Vector3.new()
    alp.MaxForce = 999999999
    alp.MaxVelocity = math.huge
    alp.ReactionForceEnabled = false
    alp.Responsiveness = math.huge
    part.Massless = true
end

for i,part in next, char:GetDescendants() do
    if part:IsA("BasePart") then
        te(ct,rs.RenderStepped:Connect(function()
            part.CanCollide = false
        end))
    end
end

for i,part in next, char:GetDescendants() do
    if part:IsA("BasePart") then
        te(ct,rs.Stepped:Connect(function()
            part.CanCollide = false
        end))
    end
end

for i,part in next, reanim:GetDescendants() do
    if part:IsA("BasePart") then
        te(ct,rs.RenderStepped:Connect(function()
            part.CanCollide = false
        end))
    end
end

for i,part in next, reanim:GetDescendants() do
    if part:IsA("BasePart") then
        te(ct,rs.Stepped:Connect(function()
            part.CanCollide = false
        end))
    end
end

-- for i,v in next, char:GetDescendants() do
--     if v:IsA("Accessory") then
--         local c = v:Clone()
--         c.Parent = reanim
--         align(v.Handle,c.Handle)
--     end
-- end

for i,v in next,blockhats do
    local m = v.Handle:FindFirstChildOfClass("Mesh") or v.Handle:FindFirstChildOfClass("SpecialMesh")
    m:Destroy()
end

for i,v in next,smallhats do
    local m = v.Handle:FindFirstChildOfClass("Mesh") or v.Handle:FindFirstChildOfClass("SpecialMesh")
    m:Destroy()
end

align(char["Head"],reanim["Head"])
align(char["Torso"],reanim["UpperTorso"],Vector3.new(0,-.25,0))
pos(char["HumanoidRootPart"],reanim["LowerTorso"])
align(blockhats[1].Handle,reanim["RightUpperArm"],Vector3.new(0,.1,0))
align(blockhats[2].Handle,reanim["LeftUpperArm"],Vector3.new(0,.1,0))
align(blockhats[3].Handle,reanim["RightUpperLeg"],Vector3.new(0,-.1,0))
align(blockhats[4].Handle,reanim["LeftUpperLeg"],Vector3.new(0,-.1,0))
align(blockhats[5].Handle,reanim["RightLowerLeg"],Vector3.new(0,-.2,0))
align(blockhats[6].Handle,reanim["LeftLowerLeg"],Vector3.new(0,-.2,0))
align(blockhats[7].Handle,reanim["RightLowerArm"],Vector3.new(0,-.3,0))
align(blockhats[8].Handle,reanim["LeftLowerArm"],Vector3.new(0,-.3,0))
align(smallhats[1].Handle,reanim["RightFoot"],Vector3.new(0,-.1,-.1),Vector3.new(0,90,0))
align(smallhats[2].Handle,reanim["LeftFoot"],Vector3.new(0,-.1,-.1),Vector3.new(0,90,0))

local Animate = reanim.Animate

if PackageName and table.find(packages,PackageName) then
    local animids = packages[PackageName]
    Animate.idle.Animation1.AnimationId = animids[1]
    Animate.idle.Animation2.AnimationId = animids[2]
    Animate.run.RunAnim.AnimationId = animids[3]
    Animate.walk.WalkAnim.AnimationId = animids[4]
    Animate.jump.JumpAnim.AnimationId = animids[5]
    Animate.climb.ClimbAnim.AnimationId = animids[6]
    Animate.fall.FallAnim.AnimationId = animids[7]
    Animate.swim.Swim.AnimationId = animids[8]
    Animate.swimidle.SwimIdle.AnimationId = animids[9]
end

local endloop = false
spawn(function()
    wait(1)
    char.Head.CFrame = CFrame.new(0,500,0)
    task.wait(.02)
    while true do
        if endloop then break end
        char.Head.CFrame = reanim.Head.CFrame
        wait(5)
        char.Head.CFrame = char.Head.CFrame + Vector3.new(0,300,0)
        task.wait(.02)
    end
end)


m = plr:GetMouse()

--reanim.HumanoidRootPart.RootJoint.Part0 = nil

function flinger(p)
f = Instance.new("BodyAngularVelocity",p)
f.AngularVelocity = Vector3.new(9e9,9e9,9e9)
f.MaxTorque = Vector3.new(9e9,9e9,9e9)
end

flinger(char.HumanoidRootPart)

char.HumanoidRootPart.Transparency = 0.6

bp = Instance.new("BodyPosition",char.HumanoidRootPart)
bp.P = 9e9
bp.D = 9e9
bp.MaxForce = Vector3.new(99999,99999,99999)

local flingtarget

te(ct,rs.Heartbeat:Connect(function()
    if flingtarget then
        local pos = {x=0, y=0, z=0}
		pos.x = flingtarget.Position.X
		pos.y = flingtarget.Position.Y
		pos.z = flingtarget.Position.Z
		pos.x = pos.x + flingtarget.Velocity.X / 2
		pos.y = pos.y + flingtarget.Velocity.Y / 2
		pos.z = pos.z + flingtarget.Velocity.Z / 2
        bp.Position = Vector3.new(pos.x,pos.y,pos.z)
        char.HumanoidRootPart.Position = Vector3.new(pos.x,pos.y,pos.z)
    else
        bp.Position = reanim.LowerTorso.Position
        char.HumanoidRootPart.Position = reanim.LowerTorso.Position - Vector3.new(0,15,0)
    end
end))

local function flingattack(part)
    spawn(function()
        flingtarget = part
        wait(.2)
        flingtarget = nil
    end)
end

spawn(function()
    while true do
        if ded then break end
        for i = 1, 360 do
            local col = Color3.fromHSV(i/360, 1, 1)
            rs.Stepped:Wait()
            char.HumanoidRootPart.Color = col
        end
    end
end)

te(ct,rs.RenderStepped:Connect(function()
	reanim.Humanoid:Move(char.Humanoid.MoveDirection, false)
	reanim.Humanoid.Jump = char.Humanoid.Jump
end))

spawn(function()
    script = reanim.Animate
    loadstring(script.Source)()
end)

workspace.CurrentCamera.CameraSubject = reanim.Humanoid

local reset = Instance.new("BindableEvent")
te(ct,reset.Event:Connect(function()
    reanim:Destroy()
    HumanDied = true
    reanimated = false
    for i,v in next, char:GetDescendants() do
        if v:IsA("BasePart") then
            v.Anchored = true 
        end
    end
    
    plr.Character = nil
    plr.Character = char
    
    for i,v in pairs(ct) do
        v:Disconnect()
    end
    endloop = true
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
    reset:Remove()
    notify("Resetting","Please wait " .. tostring(game.Players.RespawnTime) .. " seconds")
end))

game:GetService("StarterGui"):SetCore("ResetButtonCallback", reset)
