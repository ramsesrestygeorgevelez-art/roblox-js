local Utils = require(script:FindFirstChild("Utils"))
local Services = require(script:FindFirstChild("Services"))
local Signal = require(script:FindFirstChild("Signal"))
local RobloxJS = {}
-- // Settings
RobloxJS.config = {}
-- // Functions
function RobloxJS.insertElement(elementData)
    local function createElement(data)
        local elementType = data["Name"]
        local properties = data["Properties"] or {}
        local contents = data["Contents"] or {}

        local element = Instance.new(elementType)

        for property, value in pairs(properties) do
            element[property] = value
        end

        for childName, childData in pairs(contents) do
            childData["Name"] = childName
            local childElement = createElement(childData)
            childElement.Parent = element
        end

        return element
    end

    return createElement(elementData)

end
function RobloxJS.init(config)
    RobloxJS.config = config or {}
    if RobloxJS.config["logging"] then
        print("RobloxJS initialized with config:", RobloxJS.config)
    end
end
function RobloxJS.getConfig()
    return RobloxJS.config
end
function RobloxJS.isDebugMode()
    return RobloxJS.config["debug"] == true
end
function RobloxJS.isPerformanceMode()
    return RobloxJS.config["performance"] == true
end
function RobloxJS:insertUIfromUIUtils(uiData)
    local UIUtils = Utils.getUtil("UIUtils")
    return UIUtils.insertElement(uiData)
end

function RobloxJS.