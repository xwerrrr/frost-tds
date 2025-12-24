local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local positions = {
    Vector3.new(-23.6, 3.8, -12.0),
    Vector3.new(-15.8, 3.8, -1.59),
    Vector3.new(7.0, 3.8, -13.8)
}

local interval = 10

local function getRootPart()
    local char = localPlayer.Character or localPlayer.CharacterAdded:Wait()
    return char:WaitForChild("HumanoidRootPart")
end

spawn(function()
    local root = getRootPart()
    local index = 1
    while true do
        root.CFrame = CFrame.new(positions[index])
        index = index + 1
        if index > #positions then
            index = 1
        end
        wait(interval)
    end
end)