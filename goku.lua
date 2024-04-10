local AHHH = true

local plr = game.Players.localPlayer
local radius2 = 3

local table = {
    "rbxassetid://16198712683",
    "rbxassetid://16198713446",
    "rbxassetid://16198714402",
    "rbxassetid://16198715440",

    "rbxassetid://15299925298",
    "rbxassetid://15299942698",
    "rbxassetid://15299947210",
    "rbxassetid://15299952104"
}
game:GetService("RunService").heartbeat:Connect(function()
	game:GetService("RunService").RenderStepped:Wait()


if AHHH == true then
for i, v in pairs(game:GetService("Players"):GetPlayers()) do 
	if v ~= plr then
		local magnitude = (plr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
		if radius2 >= magnitude then
			for i,d in pairs(v.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks()) do
					if table.find(table, d.Animation.AnimationId) then
					print(v.Name)
					game:GetService("Players").LocalPlayer.Character.Handler.Block:FireServer(true)
					wait(0.8)
					game:GetService("Players").LocalPlayer.Character.Handler.Block:FireServer(false)
				end
			end
		end
	end
end
end -- if ahh = true
end)

--[[

assert(getrawmetatable)
gmt = getrawmetatable(game)
setreadonly(gmt, false)
old = gmt.namecall
gmt.namecall =
    newcclosure(
        function(self, ...)
        local args = {...}
        if tostring(args[1]) == "Globa_l" then
            returnend

        return old(self, ...)
end)

]]
