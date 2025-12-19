local Sirius = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Sirius/main/source.lua"))()

local Window = Sirius:CreateWindow({
    Name = "FOV",
    ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Main")

local cam = workspace.CurrentCamera

Tab:CreateSlider({
    Name = "FOV",
    Range = {60, 120},
    Increment = 1,
    CurrentValue = cam.FieldOfView,
    Callback = function(v)
        cam.FieldOfView = v
    end
})
