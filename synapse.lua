local gameId  = game.PlaceId
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("convhub v0.1", "Synapse")
game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "for your convienience",
    Text = "loaded you idot",
})

-- General Tab
local Gen = Window:NewTab("general")
local GenSec = Gen:NewSection("scripts")

GenSec:NewButton("Orca", "Launches a script hub.", function()

    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua"))()

end)

GenSec:NewButton("Prevail X [check info]", "Launches a script hub. [May only work in some games.]", function()

    loadstring(game:HttpGet("https://pastebin.com/raw/mHfK0Xk4", true))()

end)

GenSec:NewButton("CMD-X", "Launches a admin script.", function()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()

end)

-- LocalPlayer Tab
local Lp = Window:NewTab("player")
local LpSec = Lp:NewSection("movement")

LpSec:NewSlider("walkspeed", "Changes how fast you walk.", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

LpSec:NewSlider("jumppower", "Changes how fast you jump.", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

LpSec:NewButton("infinite jump", "Lets you infinitely jump", function()
    game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")    
end)

local LpSec2 = Lp:NewSection("server")

LpSec2:NewButton("rejoin", "Rejoins the server you are in", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
end)



-- Games Tab
local Gam = Window:NewTab("games")
local GamSec = Gam:NewSection("you are in " .. "\"" .. gameName .. "\"" .. " -- " .. gameId)

GamSec:NewButton("Arsenal [check info]", "Also a script hub, try it on a game not listed", function()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/HonestlyDex/DexHub/main/V3.lua"))()

end)

GamSec:NewButton("Blox Fruits", "Launches a script for Blox Fruits.", function()

    loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()

end)

GamSec:NewButton("MM2", "Launches a script for Murder Mystery 2.", function()

    setclipboard("https://github.com/Ethanoj1/Eclipse")
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "ligma",
        Text = "link copied to clipboard",        Icon = ""
    })
end)


