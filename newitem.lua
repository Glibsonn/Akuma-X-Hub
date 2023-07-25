local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sword Selector", "BloodTheme")

local Tab = Window:NewTab("Items")
local Section = Tab:NewSection("Sword")

local swordName = "Sword Name" -- Default value for the sword name

Section:NewTextBox("Type Sword Name", "Sword Name", function(newText)
    swordName = newText -- Update the swordName variable whenever the text changes
end)

Section:NewButton("Buy Sword", "Buys Selected Sword", function()
    game:GetService("ReplicatedStorage").BonusFolderFX.BoughASword:FireServer("Buy", swordName, 0)
end)

Section:NewLabel("Accessory")

local AccessoryName = "Accessory Name" -- Default value for the accessory name

Section:NewTextBox("Type Accessory Name", "Accessory Name", function(newText)
    AccessoryName = newText -- Update the AccessoryName variable whenever the text changes
end)

Section:NewButton("Buy Accessory", "Buys Selected Accessory", function()
    game:GetService("ReplicatedStorage").BonusFolderFX.BoughAAccessory:FireServer("Buy", "Diamond", AccessoryName, 0)
end)
