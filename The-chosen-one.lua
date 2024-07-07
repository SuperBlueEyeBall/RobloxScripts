--[[ how to use
say "startauto" to start the bot
say "stopauto" to stop the bot
say "turnoff" to turn off everything
say "turnon" to turn on everything

if you are away, get an account that is friended with yours and you can do
"YOURPLAYERNAME stop." to stop it
"YOURPLAYERNAME start." to start it
"YOURPLAYERNAME say (whatever you want)" to make it say stuff


if you are not using the bot, you can use the features of it that include:
Anti-glitch
Anti-fling
Anti-jail
Anti-freeze
Anti-afk
Anti-blind
Anti-stun
Anti-invis
Anti-toxify
Anti-blur
Anti-nocolor (idk what it is)

It will still say stuff when muted, but if you want to actually talk while muted, use infinite yield's "chat command"


WEBHOOKING:
Put the webhook you want below and optional, the person you will tag   ]]
local webhookurl = ""
local tagperson = "<@USERIDHERE>"
-- it will tell you when you've disconnected, your time is losing, or the admin changes

loadstring(game:HttpGet("https://pastebin.com/raw/rH4hbmK9"))()
if getgenv().thechosenonescriptdisable then
    getgenv().thechosenonescriptdisable()
end

local localplr = game.Players.LocalPlayer
local automessage = false
local off = false

function isadmin(plr)
    print(plr.Team == game.Teams.Admin)
    if plr.Team == game.Teams.Admin then return true end
    print(plr.Backpack:FindFirstChild("The Arkenstone") or plr.Character:FindFirstChild("The Arkenstone"))
    if plr.Backpack:FindFirstChild("The Arkenstone") or plr.Character:FindFirstChild("The Arkenstone") then return true end
    local found = false
    for i,v in pairs(workspace:GetChildren()) do
        if v.Name == "The Arkenstone" and v.Handle:FindFirstChild("TouchInterest") then
            found = true
        end
    end
    return found
end
function getadmin()
    if localplr.Team ~= game.Teams.Admin and localplr.Character and not localplr.Character:FindFirstChild("The Arkenstone") and not localplr.Backpack:FindFirstChild("The Arkenstone") then
        local found = false
        for i,v in pairs(workspace:GetChildren()) do
            if found then
                continue
            elseif v.Name == "The Arkenstone" and v.Handle:FindFirstChild("TouchInterest") then
                found = v
            end
        end
        if found and localplr.Character and localplr.Character:FindFirstChild("HumanoidRootPart") then
            task.spawn(function()
                repeat
                    wait()
                    found.Handle.CFrame = localplr.Character.HumanoidRootPart.CFrame
                    found.Handle.ForceField.CFrame = localplr.Character.HumanoidRootPart.CFrame
                until not found or not found:FindFirstChild("Handle") or localplr.Character:FindFirstChild("The Arkenstone")
                return true
            end)
        end
    end
end
function equipadmin()
    if localplr.Team ~= game.Teams.Admin and not localplr.Character:FindFirstChild("The Arkenstone") then
        local tool = localplr.Backpack:FindFirstChild("The Arkenstone")
        if tool then
            tool.Parent = localplr.Character
        end
    end
end
local chat = require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("ChatScript"):WaitForChild("ChatMain"))
function say(text,channel)
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(text,channel or "All")
    wait(.5)
    chat.MessagePosted:fire(text)
end
local connect1 = {}
local playertimes = {}
function doplr(plr)
    if off then return end
    local speaker = plr.Name
    if plr:IsFriendsWith(localplr.UserId) and isadmin(localplr) then
        getadmin()
        equipadmin()
        say("enlighten "..speaker,"System")
    end
    if not playertimes[speaker] then
        playertimes[speaker] = 0
    end
    table.insert(connect1,plr:GetPropertyChangedSignal("Team"):Connect(function()
        if plr.Team == game.Teams.Admin then
            webhook("NEW ADMIN! "..plr.Name.."/"..plr.DisplayName,tonumber(0xFFFF00))
        end
    end))
    table.insert(connect1,plr.Chatted:Connect(function(text)
        local text = text:lower()
        if speaker ~= localplr.Name then
            if text == localplr.Name:lower().." stop." and game.Players[speaker]:IsFriendsWith(localplr.UserId) then
                automessage = false
            elseif text == localplr.Name:lower().." start." and game.Players[speaker]:IsFriendsWith(localplr.UserId) then
                automessage = true
            elseif string.sub(text,1,string.len(localplr.Name:lower().." say")) == localplr.Name:lower().." say" and game.Players[speaker]:IsFriendsWith(localplr.UserId) then
                say(string.sub(text,string.len(localplr.Name:lower().." say ")+1),"All")
            elseif string.sub(text,1,6) == "donate" and isadmin(localplr) then
                getadmin()
                local split = string.split(text," ")
                local num
                local plrname
                if tonumber(split[2]) then
                    num = tonumber(split[2])
                    plrname = split[3]
                elseif tonumber(split[3]) then
                    num = tonumber(split[3])
                    plrname = split[2]
                end
                local found = false
                local player = nil
                if num and plrname then
                    playertimes[speaker] += num
                    for i=1,string.len(plrname)+1 do
                        if found then continue end
                        local amt = i-1
                        print(i,amt)
                        local newplrname = string.sub(plrname:lower(),1,string.len(plrname)-amt)
                        for i,v in pairs(game.Players:GetPlayers()) do
                            if found then continue end
                            if v.Name:lower() == newplrname then
                                found = true
                                player = v
                            end
                        end
                        for i,v in pairs(game.Players:GetPlayers()) do
                            if found then continue end
                            if string.find(v.Name:lower(),newplrname) then
                                found = true
                                player = v
                            end
                        end
                    end
                    if found and plr and plr == localplr and playertimes[speaker] >= 500 then
                        getadmin()
                        equipadmin()
                        say("enlighten "..speaker,"All")
                    end
                end
            end
        elseif plr == localplr then
            if text == "startauto" then
                automessage = true
            elseif text == "stopauto" then
                automessage = false
            elseif text == "turnoff" then
                off = true
            elseif text == "turnon" then
                off = false
            end
        end
    end))
end
local connect2 = game.Players.PlayerAdded:Connect(function(plr)
    doplr(plr)
end)
function webhook(text,color)
    if webhookurl == "" then
        return
    elseif webhookurl ~= "" then
        text = tostring(text)
        local col = tonumber(0xFFFF00)
        if color then
            col = color
        end
        local http = game:GetService("HttpService")
        if tagperson ~= "<@USERIDHERE>" then
            local s = request({
                Url = webhookurl,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = http:JSONEncode({
                    ["content"] = tagperson,
                    ["embeds"] = {{
                        ["title"] = text,
                        ["description"] = text,
                        ["type"] = "rich",
                        ["color"] = col
                    }}
                })
            })
            table.foreach(s,print)
        else
            local s = request({
                Url = webhookurl,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = http:JSONEncode({
                    ["content"] = "",
                    ["embeds"] = {{
                        ["title"] = text,
                        ["description"] = text,
                        ["type"] = "rich",
                        ["color"] = col
                    }}
                })
            })
            table.foreach(s,print)
        end
    end
end
table.insert(connect1,game.CoreGui:FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay").DescendantAdded:Connect(function(gui)
    if notifyondisconnect == true and gui.Name == "ErrorTitle" then
        gui:GetPropertyChangedSignal("Text"):Connect(function()
            if gui.Text == "Disconnected" then
                webhook("You Got Disconnected!",tonumber(0xFF0000))
            end
        end)
        if gui.Text == "Disconnected" then
            webhook("You Got Disconnected!",tonumber(0xFF0000))
        end
    end
end))
for i,plr in pairs(game.Players:GetPlayers()) do
    doplr(plr)
end

table.insert(connect1,workspace.Cubes.DescendantAdded:Connect(function(cube)
    if cube:IsA("Part") then
        cube.CanTouch = false
    end
end))
for i,cube in pairs(workspace.Cubes:GetDescendants()) do
    if cube:IsA("Part") then
        cube.CanTouch = false
    end
end

function disablefunc()
    for i,v in pairs(connect1) do
        v:Disconnect()
    end
    connect2:Disconnect()
    off = true
end

getgenv().thechosenonescriptdisable = disablefunc
task.spawn(function()
    while wait(.25) do
        if not off then
            game.ReplicatedStorage.System:FireServer("Focused")
        end
    end
end)
task.spawn(function()
    while wait(.5) do
        if localplr.Character and not off then
            getadmin()
            game.ReplicatedStorage.System:FireServer("Input")
            if localplr.Character:FindFirstChild("HumanoidRootPart") and localplr.Character:FindFirstChild("Humanoid") and localplr.Character.HumanoidRootPart.Anchored == true then
                localplr.Character.Humanoid.Health = 0
            end
            if localplr.Character:FindFirstChild("Torso") and localplr.Character:FindFirstChild("Humanoid") and localplr.Character.Torso.Transparency == 1 then
                localplr.Character.Humanoid.Health = 0
            end
            if localplr.PlayerGui:FindFirstChild("BlindGUI") then
                localplr.PlayerGui.BlindGUI.Enabled = false
            end
            game.Lighting.Blur.Enabled = false
            game.Lighting.RGB.Enabled = false
            if localplr.Character:FindFirstChild("HumanoidRootPart") and (localplr.Character.HumanoidRootPart.Position.Y >= 100000 or localplr.Character.HumanoidRootPart.Position.X >= 10000 or localplr.Character.HumanoidRootPart.Position.X <= -10000 or localplr.Character.HumanoidRootPart.Position.Z >= 10000 or localplr.Character.HumanoidRootPart.Position.Z <= -10000) then
                localplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0,0,0)
                localplr.Character:PivotTo(CFrame.new(0,200,0))
            end
            if localplr.Character:FindFirstChild("Humanoid") and (localplr.Character.Humanoid.PlatformStand == true or localplr.Character.Humanoid.Sit == true) then
                localplr.Character.Humanoid.PlatformStand = false
                localplr.Character.Humanoid.Sit = false
            end
            if localplr.Character:FindFirstChild("HumanoidRootPart") and localplr.Character.HumanoidRootPart.CollisionGroup == "NoClip" then
                for i,v in pairs(localplr.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CollisionGroup = "Default"
                    end
                end
            end
            if localplr.Character:FindFirstChild("Humanoid") then
                if localplr.Character.Humanoid.WalkSpeed <= 0 then
                    localplr.Character.Humanoid.WalkSpeed = 16
                    localplr.Character.Humanoid.JumpPower = 50
                end
            end
            if localplr.Character:FindFirstChild("Jail") then
                for i,v in pairs(localplr.Character.Jail:GetChildren()) do
                    v.CanCollide = false
                end
            end
        end
    end
end)
local origtime = localplr.leaderstats.Time.Value
local messages = {
    "Donate For Enlighten!",
    "donate for enlighten lol",
    "donate to me for enlighten",
    "donate 2 me for enlighten",
    "get enlighten if u donate to me",
    "Donate 4 Enlighten!",
    "plz donate, ill give enlighten",
    "Enlighten 4 sale!",
    "don 8 for enlighten",
    "lol donate for enlighten",
    "if u want enlighten just donate",
    "ENLIGHTEN FOR SALE! ONLY 500",
    "JUST DO IT. MAKE YOUR ENLIGHTEN SPAWN WITH A DONATION OF 500 TO ME"
}
task.spawn(function()
    while wait(15) do
        if not off then
            if automessage then
                local tosay = ""
                tosay = messages[math.random(1,#messages)]
                --[[if localplr.Character and localplr.Character:FindFirstChild("Muted") and localplr.Character.Muted:FindFirstChild("TextLabel") and localplr.Character.Muted.TextLabel.Visible == true and game.Teams.Admin:GetPlayers()[1] then
                    tosay = "/w "..game.Teams.Admin:GetPlayers()[1].Name.." "..tosay
                end]]
                say(tosay,"All")
            end
            if localplr.Character and localplr.Character:FindFirstChild("Humanoid") then
                if localplr.leaderstats.Time.Value <= origtime then
                    localplr.Character.Humanoid.Health = 0
                    if localplr.leaderstats.Time.Value == origtime then
                        webhook("Your time is not changing! Time Difference: "..tostring(localplr.leaderstats.Time.Value-origtime),tonumber(0xFF0000))
                    else
                        webhook("You are losing time! Time Difference: "..tostring(localplr.leaderstats.Time.Value-origtime),tonumber(0xFF0000))
                    end
                elseif automessage then
                    localplr.Character.Humanoid:MoveTo(Vector3.new(math.random(-50,50),100,math.random(-50,50)))
                end
            end
            origtime = localplr.leaderstats.Time.Value
        end
    end
end)
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Script done!",
    Text = "Script done!"
})
