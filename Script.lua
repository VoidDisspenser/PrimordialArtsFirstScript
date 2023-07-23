local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/TheoTheEpic/AquaLib/main/AquaLib.lua'))()


local window = lib.createWindow("Aqua", "BCO2", true) 
local tab1 = window.createTab("Main")
local section1 = tab1.createSection("Scripts", false)
local section2 = tab1.createSection("Temple", false)

section1.createButton("Dex", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)
section1.createButton("Anti-Afk", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidDisspenser/Scripts/main/idk"))()
end)
section1.createButton("TimeStop", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Time%20Stop%20Obfuscator'))()
end)
section1.createButton("BCO-Script", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/xAI-13/Personal-Scripts/main/BCO'),true))()
end)

section2.createToggle("Torment-Mode", false, function(value)
	while value == true do
        local args = {
            [1] = "Torment"
        }

game:GetService("ReplicatedStorage").VoteRemote:InvokeServer(unpack(args))
    end
end)
section2.createToggle("Kelp-Vote", false, function(value)
	while value == true do
        local args = {
            [1] = "LegendaryItem"
        }
        
        game:GetService("ReplicatedStorage").WageRemote:InvokeServer(unpack(args))    
    end
end)


tab1.createDropdown("Weapon-Auto", {"Seal", "Star", "None"}, "None", function(value)
    while value == "Seal" do
        local args = {
            [1] = "UltimateAttackPermit"
            }
            
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Equinox Seal").RemoteFunction:InvokeServer(unpack(args))
    end
    while value == "Star" do
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
                
    end
end)

tab1.createButton("Safe-Zone", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4086.654541015625, 854.4833374023438, -4174.62060546875)
end)
tab1.createButton("Unsafe-Zone", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.7520514726638794, 70.96434783935547, -108.06066131591797)
end)

