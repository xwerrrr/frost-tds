-- Tower 1: Golden Scout
-- Tower 2: Hacker
-- Tower 3: Accelerator
-- Tower 4: Warlock
-- Tower 5: Mercenary Base

-- Max skill tree is optional!

if QOT then
    QOT(script_content)
end

local QOT = queue_on_teleport or (syn and syn.queue_on_teleport)
local script_content = [[
    _G.AutoStrat = true
    local Difficulty = "Frost" -- Replace this with the Difficulty you want to use (Examples: Easy, Intermediate, Molten, Fallen, Frost)
    local function IsLobby() return game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LobbyGui") end
    local function IsInGame() return game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("GameGui") end

    while _G.AutoStrat do
        task.wait(1)
        if IsLobby() then
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteFunction"):InvokeServer("Multiplayer","v2:start",{difficulty=Difficulty,mode="survival",count=1})
        elseif IsInGame() then
            task.wait(10)
            _G.AutoStrat = true
            _G.Webhook = "" -- SET YOUR WEBHOOK URL HERE, IF YOU DO MAKE SURE _G.SendWebhook is set to true aswell
            _G.SendWebhook = false
            _G.BackToLobby =  true
            _G.AutoSkip = false
            _G.AutoSnowballs = false

            local TDS = loadstring(game:HttpGet("https://raw.githubusercontent.com/DuxiiT/tds-autostrat/refs/heads/main/main.lua"))()

            -- Example Strat
            while _G.AutoStrat do
                TDS:SelectMap("Simplicity") -- Only use this if you have VIP
                TDS:VoteMap("Simplicity", Vector3.new(12.59, 10.64, 52.01)) -- Keep the Vectors as is, don't change them

                TDS:StartGame()

                task.wait(7)

                TDS:Ready()

                TDS:UnlockTimeScale()
                TDS:UseTimeScale(2) -- 2 being x2, after running this once, doing it again will kind of mess it up so don't run UseTimeScale again unless you know what you're doing!
                
                TDS:Place("Scout", -15.24, 1.00, -8.97) -- 1
                TDS:Place("Scout", -16.65, 1.00, -11.65) -- 2
                TDS:Place("Scout", -19.71, 1.00, -12.34) -- 3
                TDS:Place("Scout", -20.00, 1.00, -15.33) -- 4
                TDS:Place("Scout", -16.83, 1.00, -14.83) -- 5
                TDS:Place("Scout", -13.68, 1.00, -14.99) -- 6
                TDS:Place("Scout", -13.62, 1.00, -11.84) -- 7
                TDS:Upgrade(1)
                TDS:Upgrade(1)
                TDS:Upgrade(2)
                TDS:Upgrade(2)
                TDS:Upgrade(3)
                TDS:Upgrade(3)
                TDS:Upgrade(4)
                TDS:Upgrade(4)
                TDS:Upgrade(5)
                TDS:Upgrade(5)
                TDS:Upgrade(6)
                TDS:Upgrade(6)
                TDS:Upgrade(7)
                TDS:Upgrade(7)
                TDS:Place("Hacker", -12.12, 1.00, -9.13) -- 8
                TDS:Place("Hacker", -12.58, 1.00, 3.03) -- 9
                TDS:Upgrade(8)
                TDS:Upgrade(8)
                TDS:Upgrade(9)
                TDS:Upgrade(9)
                TDS:Place("Scout", -15.64, 1.00, 3.26) -- 10
                TDS:Upgrade(10)
                TDS:Upgrade(10)
                TDS:Place("Scout", -18.69, 1.00, 3.23) -- 11
                TDS:Upgrade(11)
                TDS:Upgrade(11)
                TDS:Place("Scout", -18.74, 1.00, 6.30) -- 12
                TDS:Upgrade(12)
                TDS:Upgrade(12)
                TDS:Place("Scout", -15.68, 1.00, 6.29) -- 13
                TDS:Upgrade(13)
                TDS:Upgrade(13)
                TDS:Place("Scout", -12.62, 1.00, 6.13) -- 14
                TDS:Upgrade(14)
                TDS:Upgrade(14)
                TDS:Place("Scout", -9.46, 1.00, 3.14) -- 15
                TDS:Upgrade(15)
                TDS:Upgrade(15)
                TDS:Place("Scout", -9.52, 1.00, 6.32) -- 16
                TDS:Upgrade(16)
                TDS:Upgrade(16)
                TDS:Place("Scout", -9.02, 1.00, -9.11) -- 17
                TDS:Upgrade(17)
                TDS:Upgrade(17)
                TDS:Place("Scout", -21.71, 1.00, 3.27) -- 18
                TDS:Upgrade(18)
                TDS:Upgrade(18)
                TDS:Upgrade(1)
                TDS:Upgrade(2)
                TDS:Upgrade(3)
                TDS:Upgrade(4)
                TDS:Upgrade(5)
                TDS:Upgrade(6)
                TDS:Upgrade(7)
                TDS:Upgrade(10)
                TDS:Upgrade(11)
                TDS:Upgrade(12)
                TDS:Upgrade(13)
                TDS:Upgrade(14)
                TDS:Upgrade(15)
                TDS:Upgrade(16)
                TDS:Upgrade(17)
                TDS:Upgrade(18)
                TDS:Place("Mercenary Base", 25.39, 1.00, 12.63) -- 19
                TDS:Upgrade(19)
                TDS:Upgrade(19)
                TDS:Upgrade(19)
                TDS:Place("Mercenary Base", 20.68, 1.00, 12.67) -- 20
                TDS:Upgrade(20)
                TDS:Upgrade(20)
                TDS:Upgrade(20)
                TDS:Place("Mercenary Base", 25.79, 1.00, 18.40) -- 21
                TDS:Upgrade(21)
                TDS:Upgrade(21)
                TDS:Upgrade(21)
                TDS:Upgrade(1)
                TDS:Upgrade(2)
                TDS:Upgrade(3)
                TDS:Upgrade(4)
                TDS:Upgrade(5)
                TDS:Upgrade(6)
                TDS:Upgrade(7)
                TDS:Upgrade(10)
                TDS:Upgrade(11)
                TDS:Upgrade(12)
                TDS:Upgrade(13)
                TDS:Upgrade(14)
                TDS:Upgrade(15)
                TDS:Upgrade(16)
                TDS:Upgrade(17)
                TDS:Upgrade(18)
                TDS:Upgrade(19)
                TDS:Upgrade(19)
                TDS:Upgrade(19)
                TDS:Ability(19, "Air-Drop", {pathName = 1, directionCFrame = CFrame.new(), dist = 150}, true)
                TDS:SetOption(19, "Unit 3", "Field Medic")
                TDS:Upgrade(20)
                TDS:Upgrade(20)
                TDS:Upgrade(20)
                TDS:Ability(20, "Air-Drop", {pathName = 1, directionCFrame = CFrame.new(), dist = 150}, true)
                TDS:Upgrade(21)
                TDS:Upgrade(21)
                TDS:Upgrade(21)
                TDS:Ability(21, "Air-Drop", {pathName = 1, directionCFrame = CFrame.new(), dist = 150}, true)
                TDS:Place("Warlock", -12.1382923, 2.35000086, -3.52993631) -- 22
                TDS:Upgrade(22)
                TDS:Upgrade(22)
                TDS:Upgrade(22)
                TDS:Place("Warlock", -9.12535381, 2.35000086, -3.75096846) -- 23
                TDS:Upgrade(23)
                TDS:Upgrade(23)
                TDS:Upgrade(23)
                TDS:Place("Warlock", -12.5959377, 2.35000038, -0.488339424) -- 24
                TDS:Upgrade(24)
                TDS:Upgrade(24)
                TDS:Upgrade(24)
                TDS:Place("Warlock", -9.51527023, 2.34998322, -0.76658535) -- 25
                TDS:Upgrade(25)
                TDS:Upgrade(25)
                TDS:Upgrade(25)
                TDS:Upgrade(22)
                TDS:Upgrade(22)
                TDS:Upgrade(23)
                TDS:Upgrade(23)
                TDS:Upgrade(24)
                TDS:Upgrade(24)
                TDS:Upgrade(25)
                TDS:Upgrade(25)
                TDS:Place("Accelerator", -6.10374212, 2.34998798, -3.54938531) -- 26
                TDS:Upgrade(26)
                TDS:Upgrade(26)
                TDS:Upgrade(26)
                TDS:Place("Accelerator", -2.93865132, 2.3499918, -3.34146309) -- 27
                TDS:Upgrade(27)
                TDS:Upgrade(27)
                TDS:Upgrade(27)
                TDS:Place("Accelerator", 0.183600187, 2.34998322, -3.29001379) -- 28
                TDS:Upgrade(28)
                TDS:Upgrade(28)
                TDS:Upgrade(28)
                TDS:Place("Accelerator", -2.4514637, 2.34998322, 2.40833759) -- 29
                TDS:Upgrade(29)
                TDS:Upgrade(29)
                TDS:Upgrade(29)
                TDS:Place("Accelerator", 0.104843616, 2.34998322, 4.04229164) -- 30
                TDS:Upgrade(30)
                TDS:Upgrade(30)
                TDS:Upgrade(30)
                TDS:Place("Accelerator", -5.86860037, 2.34999704, -8.9741745, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- 31
                TDS:Upgrade(31)
                TDS:Upgrade(31)
                TDS:Upgrade(31)
                TDS:Place("Accelerator", -2.77454877, 2.35000157, -9.04821396, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- 32
                TDS:Upgrade(32)
                TDS:Upgrade(32)
                TDS:Upgrade(32)
                TDS:Place("Accelerator", 0.199033976, 2.34998322, -9.67147255, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- 33
                TDS:Upgrade(33)
                TDS:Upgrade(33)
                TDS:Upgrade(33)
                TDS:Upgrade(26)
                TDS:Upgrade(26)
                TDS:Upgrade(27)
                TDS:Upgrade(27)
                TDS:Upgrade(28)
                TDS:Upgrade(28)
                TDS:Upgrade(29)
                TDS:Upgrade(29)
                TDS:Upgrade(30)
                TDS:Upgrade(30)
                TDS:Upgrade(31)
                TDS:Upgrade(31)
                TDS:Upgrade(32)
                TDS:Upgrade(32)
                TDS:Upgrade(33)
                TDS:Upgrade(33)
                TDS:Upgrade(8)
                TDS:Upgrade(8)
                TDS:Upgrade(8, 2)
                TDS:Upgrade(9)
                TDS:Upgrade(9)
                TDS:Upgrade(9, 2)
                TDS:Ability(8, "Hologram Tower", {
                    towerToClone = 19,
                    towerPosition = {
                        Vector3.new(14.1853657, 3.46938539, 13.4541798),
                        Vector3.new(15.6933384, 3.46938467, 18.3442345),
                    }
                }, true)
                TDS:Ability(9, "Hologram Tower", {
                    towerToClone = 20,
                    towerPosition = {
                        Vector3.new(20.7010803, 3.46938467, 18.3634109),
                        Vector3.new(19.6996384, 3.46937752, 4.1759696),
                    }
                }, true)
                TDS:SetOption(19, "Unit 1", "Riot Guard", 40)
                TDS:SetOption(19, "Unit 2", "Riot Guard", 40)
                TDS:SetOption(19, "Unit 3", "Riot Guard", 40)
                TDS:SetOption(20, "Unit 1", "Riot Guard", 40)
                TDS:SetOption(20, "Unit 2", "Riot Guard", 40)
                TDS:SetOption(20, "Unit 3", "Riot Guard", 40)
                TDS:SetOption(21, "Unit 1", "Riot Guard", 40)
                TDS:SetOption(21, "Unit 2", "Riot Guard", 40)
                TDS:SetOption(21, "Unit 3", "Riot Guard", 40)
            end
            repeat task.wait(1) until IsLobby()
        end
    end
]]
if QOT then QOT(script_content) end
loadstring(script_content)()
