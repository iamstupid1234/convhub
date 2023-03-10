local player = game.Players.LocalPlayer
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

local LpSec2 = Lp:NewSection("server")

LpSec2:NewButton("rejoin", "Rejoins the server you are in", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
end)



-- Games Tab
local Gam = Window:NewTab("games")
local GamSec = Gam:NewSection("you are in " .. "\"" .. gameName .. "\"" .. " -- " .. gameId)
local GamSec2 = Gam:NewSection("hubs")

GamSec2:NewButton("dexhub [arsenal]", "basically for arsenal", function()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/HonestlyDex/DexHub/main/V3.lua"))()

end)

GamSec2:NewButton("unfair", "Launches a scripthub (main pf).", function()

   loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()

end)

GamSec:NewButton("Blox Fruits", "Launches a script for Blox Fruits.", function()

    loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")()

end)

GamSec:NewButton("MM2", "Launches a script for Murder Mystery 2.", function()

    setclipboard("https://github.com/Ethanoj1/Eclipse")
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "ligma",
        Text = "link copied to clipboard",
    })
end)

-- Advanced tab
local Adv = Window:NewTab("tools")
local AdvSec = Adv:NewSection("game")
local AdvSec2 = Adv:NewSection("players")

AdvSec:NewButton("dark dex v4", "its also in synapse's scripthub", function()

    loadstring(game:HttpGet("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"))()

end)

AdvSec:NewButton("hydroxide rs", "remote spy", function()

    local owner = "Upbolt"
    local branch = "revision"

    local function webImport(file)
        return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
    end

    webImport("init")
    webImport("ui/main")

end)

AdvSec:NewButton("simplespy rs", "simpler remote spy", function()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()

end)

AdvSec:NewButton("script dumper [buggy]", "there is another in synapse's scripthub", function()

    loadstring(game:HttpGet("https://gist.githubusercontent.com/yafyz/558ff37ffe48ff2ca30fdaac0605bd31/raw/9ffce00588fffea97fc3830b59156b90872dc8d5/better_script_dump.lua"))()

end)

AdvSec2:NewButton("IY", "infinite yield", function()

    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()

end)

-- Credits Section
local Creds = Window:NewTab("credits")
local CredsSec = Creds:NewSection("thanks for using this, " .. player.Name)
local CredsSec = Creds:NewSection("-chunky_waterrr")
