--[[dupes is just a menu with alot of games supported such as admin rng. Go into the link in the loadstring to see the list of supported games as its being updated.
currently supported games at the time of being updated:
popItGame = 7346416636
petsGame = 7903991471
carsGame = 8216162783
mvsdGame = 12355337193
toysGame = 7503115095
AdminrngGame = 17461365630
mm2Game = 142823291
DressTrdGame = 17893531862
look at the id of the game if you don't know what game it is
--]]
local gameId = game.PlaceId
local popItGameId = 7346416636
local petsGameId = 7903991471
local carsGameId = 8216162783
local mvsdGameId = 12355337193
local toysGameId = 7503115095
local AdminrngGameId = 17461365630
local mm2GameId = 142823291
local DressTrdGameId = 17893531862

if gameId == popItGameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farx11122/Dupess/main/DupeSsv2"))()
elseif gameId == petsGameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farx11122/Dupess/main/PetTrading"))()
elseif gameId == carsGameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farx11122/Dupess/main/CarsTrading"))()
elseif gameId == mvsdGameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farx11122/Dupess/main/MurderersVsSherrifsMADEBY4Farx"))()
elseif gameId == toysGameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farx11122/Dupess/main/toys"))()
elseif gameId == AdminrngGameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farx11122/Dupess/main/AdminRNG"))()
elseif gameId == mm2GameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farx11122/Dupess/main/Murderer%20Myster%202"))()
elseif gameId == DressTrdGameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Farx11122/Dupess/main/DressTrad"))()
else
    warn("Sorry this game not supported. try to join supported games like...")
end
