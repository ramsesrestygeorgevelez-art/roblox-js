local RobloxJS = require(game:GetService("ReplicatedStorage"):WaitForChild("RobloxJS"))
local Services = require(game:GetService("ReplicatedStorage"):WaitForChild("RobloxJS"):WaitForChild("Services"))
local Utils = require(game:GetService("ReplicatedStorage"):WaitForChild("RobloxJS"):WaitForChild("Utils"))

RobloxJS.init({
    ["logging"] = true
    ["debug"] = false
    ["performance"] = false
    ["usingServices"] = {
        "CaptureService",
        "ConsoleService",
        "ShareService"
    }
    ["usingUtils"] = {
        "FunctionUtils",
        "UIUtils"
    }
})
local CaptureService = Services.getService("CaptureService")
local ConsoleService = Services.getService("ConsoleService")
local ReflectionService = Services.getService("ReflectionService")
local FunctionUtils = Utils.getUtil("FunctionUtils")
local UIUtils = Utils.getUtil("UIUtils")
local ShareService = Services.getService("ShareService")
UIUtils.insertElement({
    ["Name"] = "ScreenGui"
    ["Properties"] = {
        ["ResetOnSpawn"] = false
        ["IgnoreGuiInset"] = true
        ["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
        ["Parent"] = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
    }
    ["Contents"] = {
        ["TextLabel"] = {
            ["Properties"] = {
                ["Size"] = UDim2.new(0, 200, 0, 50)
                ["Position"] = UDim2.new(0.5, -100, 0.5, -25)
                ["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
                ["TextColor3"] = Color3.fromRGB(255, 255, 255)
                ["Text"] = "Hello, RobloxJS!"
                ["Parent"] = nil
            }
        }
    }
})