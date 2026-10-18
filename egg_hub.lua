-- Egg Hub | Interface Base
-- Para testar em uma experiência própria no Roblox Studio
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local old = playerGui:FindFirstChild("EggHub")
if old then old:Destroy() end
local gui = Instance.new("ScreenGui")
gui.Name = "EggHub"
gui.ResetOnSpawn = false
gui.Parent = playerGui
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 300, 0, 280)
main.Position = UDim2.new(0.5, -150, 0.5, -140)
main.BackgroundColor3 = Color3.fromRGB(17, 13, 24)
main.Parent = gui
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 14)
corner.Parent = main
local outline = Instance.new("UIStroke")
outline.Color = Color3.fromRGB(158, 82, 255)
outline.Thickness = 2
outline.Parent = main
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0, 45)
title.Position = UDim2.new(0, 10, 0, 5)
title.BackgroundTransparency = 1
title.Text = "EGG HUB"
title.TextColor3 = Color3.fromRGB(220, 185, 255)
title.Font = Enum.Font.GothamBlack
title.TextSize = 24
title.Parent = main
local function addButton(text, y, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, -30, 0, 42)
    button.Position = UDim2.new(0, 15, 0, y)
    button.BackgroundColor3 = Color3.fromRGB(43, 29, 58)
    button.TextColor3 = Color3.new(1, 1, 1)
    button.Text = text
    button.Font = Enum.Font.GothamBold
    button.TextSize = 14
    button.Parent = main
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 9)
    c.Parent = button
    button.Activated:Connect(callback)
end
addButton("UI  |  Interface pronta", 60, function()
    print("Egg Hub: interface funcionando")
end)
addButton("FPS  |  Testar botão", 112, function()
    print("Egg Hub: botão FPS pressionado")
end)
addButton("RARITY  |  Secret / Divine", 164, function()
    print("Egg Hub: seletor demonstrativo")
end)
addButton("FECHAR", 216, function()
    gui:Destroy()
end)
