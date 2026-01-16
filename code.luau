local RobloxJS = require(game:GetService("ReplicatedStorage"):WaitForChild("RobloxJS"))
local Services = require(game:GetService("ReplicatedStorage"):WaitForChild("RobloxJS"):WaitForChild("Services"))
local Utils = require(game:GetService("ReplicatedStorage"):WaitForChild("RobloxJS"):WaitForChild("Utils"))

RobloxJS.init({
    ["appName"]: "myGame",
    ["services"]: Services,
    ["utils"]: Utils,
})
local 