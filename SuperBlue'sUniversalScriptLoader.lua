local placeId = game.PlaceId

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperBlueEyeBall/RobloxScripts/main/AkiliNotifSender.lua"))();
local Notify = AkaliNotif.Notify;

if placeId == 8908228901 then --sharkbite 2
loadstring(game:HttpGet('https://raw.githubusercontent.com/FlmesCoding/SwirlHub/main/Sharkbite.lua'))()

elseif placeId == 142823291 then --murder mystery 2
    loadstring(game:HttpGet('https://raw.githubusercontent.com/FlmesCoding/SwirlHub/main/Protected_3969409895346508.lua'))()

elseif placeId == 621129760 then -- Kat
    loadstring(game:HttpGet('https://raw.githubusercontent.com/FlmesCoding/SwirlHub/main/KAT.lua'))()

elseif placeId == 9359839118 then -- Zach Station
    loadstring(game:HttpGet(''))()
    
elseif placeId == 13772394625 then -- Blade Ball
    loadstring(game:HttpGet(''))()

elseif placeId == 13529953420 then -- Money Race
    loadstring(game:HttpGet('https://raw.githubusercontent.com/FlmesCoding/SwirlHub/main/Money%20Race.lua'))()

elseif placeId == 1962086868 then -- Tower of hell
    loadstring(game:HttpGet('https://raw.githubusercontent.com/FlmesCoding/SwirlHub/main/TOH.lua'))()

else
    warn("No specific script found for this game!")
    Notify({
        Title = "Unsupported Game",
        Description = "This game isn't directly supported by SuperBlue's Universal Script Loader. Ensure you're in the right game or wait future updates.",
        Duration = 50
    });
end
