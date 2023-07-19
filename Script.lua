local Luxtl = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Luxware-UI-Library/main/Source.lua"))()

local Luxt = Luxtl.CreateWindow("BCO", 6105620301)

local mainTab = Luxt:Tab("MISC", 6087485864)

local g = mainTab:Section("Scripts")

g:Button("Dex Explorer", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

g:Button("Anti-Afk", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidDisspenser/Scripts/main/idk"))()
end)

g:Button("Time-Stop", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Time%20Stop%20Obfuscator'))()
end)

g:Button("BCO-SCRIPT", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/xAI-13/Personal-Scripts/main/BCO'),true))()
end)

local teleportsTab = Luxt:Tab("Teleports")

local c = teleportsTab:Section("Temple")

c:Button("Teleport-Active", function()
    local args = {
        [1] = "Confirm"
    }
    
    workspace.Bases.Base1.objects.khrysosteleporter.RemoteFunction:InvokeServer(unpack(args))
end)

c:Button("Safe-Zone", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4086.654541015625, 854.4833374023438, -4174.62060546875)
end)
