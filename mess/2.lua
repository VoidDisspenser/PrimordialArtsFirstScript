local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BCO", "Synapse")
local Tab = Window:NewTab("Ma1n")
local Tab2 = Window:NewTab("T3mple")
local Section = Tab:NewSection("Scripts")
local Section2 = Tab2:NewSection("Select")
Section:NewKeybind("Toggle-UI", "Put the key", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
local function starRemote()
local args = {
    [1] = "shoot",
    [2] = {
        [1] = Vector3.new(-129.3816680908203, 151.88101196289062, -232.2627716064453),
        [2] = Vector3.new(162.0973663330078, 8.000038146972656, -112.4929428100586)
    }
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Void Star").RemoteFunction:InvokeServer(unpack(args))
local args = {
    [1] = "shoot",
    [2] = {
        [1] = Vector3.new(-187.27528381347656, 152.1672821044922, -166.65953063964844),
        [2] = Vector3.new(-170.7216796875, 8.000038146972656, 109.27735137939453)
    }
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Void Star").RemoteFunction:InvokeServer(unpack(args))
local args = {
    [1] = "shoot",
    [2] = {
        [1] = Vector3.new(112.89905548095703, 152.06312561035156, -59.00821304321289),
        [2] = Vector3.new(-6.393074035644531, 6.000038146972656, -4.472465515136719)
    }
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Void Star").RemoteFunction:InvokeServer(unpack(args))
local args = {
[1] = "shoot",
[2] = {
[1] = Vector3.new(-5.184283256530762, 94.08582305908203, 24.890167236328125),
[2] = Vector3.new(53.142662048339844, 8.000038146972656, 188.78208923339844)
}
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Void Star").RemoteFunction:InvokeServer(unpack(args))
end
Section:NewButton("AntiAfk", "Enables the antiafk", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidDisspenser/Scripts/main/mess/AntiAfk.lua"))()
end)
Section:NewButton("Dex", "Enables the Dex-explorer", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)
Section:NewButton("TimeStop", "Enables a Client-Side time stop Scripts", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Time%20Stop%20Obfuscator'))()
end)
Section:NewButton("BCO-Script", ".", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/xAI-13/Personal-Scripts/main/BCO'),true))()
end)
Section:NewButton("Anti-Lag", ".", function()
    _G.Settings = {
        Players = {
            ["Ignore Me"] = true, -- Ignore your Character
            ["Ignore Others"] = true -- Ignore other Characters
        },
        Meshes = {
            Destroy = false, -- Destroy Meshes
            LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
        },
        Images = {
            Invisible = true, -- Invisible Images
            LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
            Destroy = false, -- Destroy Images
        },
        ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
        ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
        ["No Explosions"] = true, -- Makes Explosion's invisible
        ["No Clothes"] = true, -- Removes Clothing from the game
        ["Low Water Graphics"] = true, -- Removes Water Quality
        ["No Shadows"] = true, -- Remove Shadows
        ["Low Rendering"] = true, -- Lower Rendering
        ["Low Quality Parts"] = true -- Lower quality parts
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
    end)

Section2:NewToggle("Torment-Mode", "Turns the torment mod on, usefull if u have a long load-screen", function(state)
	while state == true do
        local args = {
            [1] = "Torment"
        }

        game:GetService("ReplicatedStorage").VoteRemote:InvokeServer(unpack(args))
    end
end)
Section2:NewToggle("Klep-Vote", "self-explain", function(state)
	while state == true do
        local args = {
            [1] = "LegendaryItem"
        }
        
        game:GetService("ReplicatedStorage").WageRemote:InvokeServer(unpack(args))    
    end
end)
Section:NewButton("EquipTools", "oo", function()
    for i,v in game.Players.LocalPlayer.Backpack:GetChildren() do
        if v:IsA("Tool") then
          v.Parent = game.Players.LocalPlayer.Character
     
end)
Section:NewDropdown("Weapons-Auto", "This can make u spam the weapon ability", {"Seal", "Star", "None"}, function(currentOption)
    while currentOption == "Seal" do
        local args = {
            [1] = "UltimateAttackPermit"
            }
            
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Equinox Seal").RemoteFunction:InvokeServer(unpack(args))
    end
    while currentOption == "Star" do
        starRemote()
    end

end)
Section2:NewButton("Safe-Zone", "tp to a safe zone and enables float, use it again to disable the float", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4086.654541015625, 854.4833374023438, -4174.62060546875)
		local player = game:GetService("Players").LocalPlayer

--Remove BodyVelocity to remove float
if player.Character.HumanoidRootPart:FindFirstChild("WRDBodyVelocity") then
    player.Character.HumanoidRootPart.WRDBodyVelocity:Destroy()
--Insert BodyVelocity to add float
else
    local bodyVelocity = Instance.new("BodyVelocity")
    --So we know what specific instance to remove when toggle off
    bodyVelocity.Name = "WRDBodyVelocity"
    bodyVelocity.Parent = player.Character.HumanoidRootPart
end
end)
Section2:NewButton("UnSafe-Zone", "tp to the center", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.7520514726638794, 70.96434783935547, -108.06066131591797)
end)

