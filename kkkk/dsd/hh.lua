src
 ├─ ServerScriptService
 │   └─ main.server.lua
 ├─ StarterPlayer
 │   └─ StarterPlayerScripts
 │       └─ main.client.lua-- main.server.lua
print("Server running!")

-- Welcome message when player joins
game.Players.PlayerAdded:Connect(function(player)
    print(player.Name .. " joined the game!")

    -- Give player a tool
    local tool = Instance.new("Tool")
    tool.Name = "Magic Sword"
    tool.RequiresHandle = false

    tool.Activated:Connect(function()
        print(player.Name .. " swung the sword!")
    end)

    tool.Parent = player.Backpack
end)

-- Create a platform in the world
local part = Instance.new("Part")
part.Name = "SpawnPlatform"
part.Size = Vector3.new(20,1,20)
part.Position = Vector3.new(0,5,0)
part.Anchored = true
part.BrickColor = BrickColor.new("Bright green")
part.Parent = workspace
-- main.client.lua
print("Client running!")

-- Show a GUI when the player joins
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
local label = Instance.new("TextLabel")

label.Text = "Welcome to the game, " .. player.Name .. "!"
label.Size = UDim2.new(0, 300, 0, 50)
label.Position = UDim2.new(0.5, -150, 0, 50)
label.TextScaled = true
label.Parent = gui

gui.Parent = player.PlayerGui-- main.server.lua
print("Server started!")

local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- RemoteEvent for coin collection
local coinEvent = Instance.new("RemoteEvent")
coinEvent.Name = "CoinCollectedEvent"
coinEvent.Parent = ReplicatedStorage

-- Give player starting stats
game.Players.PlayerAdded:Connect(function(player)
    print(player.Name .. " joined the obby!")

    -- Leaderstats for coins
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local coins = Instance.new("IntValue")
    coins.Name = "Coins"
    coins.Value = 0
    coins.Parent = leaderstats

    -- Spawn player at start checkpoint
    player.CharacterAdded:Connect(function(char)
        char:MoveTo(Vector3.new(0, 5, 0))
    end)
end)

-- Create checkpoints
for i = 1, 5 do
    local checkpoint = Instance.new("Part")
    checkpoint.Name = "Checkpoint_" .. i
    checkpoint.Size = Vector3.new(6, 1, 6)
    checkpoint.Position = Vector3.new(i * 15, 5, 0)
    checkpoint.Anchored = true
    checkpoint.BrickColor = BrickColor.Random()
    checkpoint.Parent = workspace

    checkpoint.Touched:Connect(function(hit)
        local player = game.Players:GetPlayerFromCharacter(hit.Parent)
        if player and player.Character then
            player.RespawnLocation = checkpoint
        end
    end)
end

-- Create coins
for i = 1, 10 do
    local coin = Instance.new("Part")
    coin.Name = "Coin_" .. i
    coin.Shape = Enum.PartType.Ball
    coin.Size = Vector3.new(2, 2, 2)
    coin.Position = Vector3.new(math.random(0, 60), 6, math.random(-10, 10))
    coin.Anchored = true
    coin.BrickColor = BrickColor.new("Bright yellow")
    coin.Parent = workspace

    coin.Touched:Connect(function(hit)
        local player = game.Players:GetPlayerFromCharacter(hit.Parent)
        if player then
            coin:Destroy()
            coinEvent:FireClient(player)
        end
    end)
end
