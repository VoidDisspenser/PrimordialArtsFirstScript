local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Gensokyo Arena", "DarkTheme")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")
Section:NewKeybind("Toggle-UI", "Put the key", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
Section:NewDropdown("Characters", "uu", {"Remilia", "Utsuho", "Sakuya"}, function(currentOption)
    function charRemote(currentOption)
        local args = {
            [1] = currentOption
        }
        game:GetService("ReplicatedStorage").Remotes.Characters.ChooseCharacter:FireServer(unpack(args))
    end
    
    charRemote(currentOption) -- Llama a charRemote y pasa el valor seleccionado como argumento
end)
