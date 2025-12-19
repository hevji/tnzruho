-- Sirius UI Library
local Sirius = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Sirius/main/source.lua"))()

-- Create Window
local Window = Sirius:CreateWindow({
    Name = "FOV Changer",
    LoadingTitle = "FOV Changer",
    LoadingSubtitle = "by you",
    ConfigurationSaving = {
        Enabled = false
    }
})

-- Create Tab
local Tab = Window:CreateTab("Main")

-- Camera reference
local Camera = workspace.CurrentCamera

-- Slider
Tab:CreateSlider({
    Name = "Field of View",
    Range = {60, 120},
    Increment = 1,
    Suffix = "FOV",
    CurrentValue = Camera.FieldOfView,
    Callback = function(Value)
        Camera.FieldOfView = Value
    end
})
