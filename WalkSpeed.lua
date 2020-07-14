-- >> Variables << --
local UIS = game:GetService("UserInputService")
local Humanoid = game.Players.LocalPlayer.Character.Humanoid
local isRunning = false

-- >> Configuration << --
local isTrueSpeed = 32
local isFalseSpeed = 16
local defaultKey = Enum.KeyCode.H -- https://developer.roblox.com/en-us/api-reference/enum/KeyCode

-- >> Function << --
UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if (not gameProcessedEvent) then
        if input.KeyCode == defaultKey then
            if not isRunning then
                Humanoid.WalkSpeed = tonumber(isTrueSpeed)
             else
                Humanoid.WalkSpeed = tonumber(isFalseSpeed)
            end
            isRunning = not isRunning
        end
    end
end)

--[[
    Sources:
    UIS = https://developer.roblox.com/en-us/api-reference/class/UserInputService
    Humanoid = https://developer.roblox.com/en-us/api-reference/class/Humanoid
    isRunning = https://developer.roblox.com/en-us/articles/Boolean
    isTrueSpeed / isFalseSpeed = https://developer.roblox.com/en-us/articles/Variables
    defaultKey = https://developer.roblox.com/en-us/api-reference/enum/KeyCode
--]]
