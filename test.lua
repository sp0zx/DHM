local CurrentCamera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local Mouse = game.Players.LocalPlayer:GetMouse()
local Plr
function FindClosestPlayer()
    local closestPlayer
    local shortestDistance = math.huge
for i, v in pairs(game.Players:GetPlayers()) doif v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") thenlocal pos = CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
            if magnitude < shortestDistance then
                closestPlayer = v
                shortestDistance = magnitude
            end
        end
    end
    return closestPlayer
end
Plr = FindClosestPlayer()
print(Plr.Name)













