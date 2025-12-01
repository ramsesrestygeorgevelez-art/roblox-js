local UIUtils = {}

function uiData.insertElement(elementData)
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
function UIUtils.setProperty(element, propertyName, value)
    if element and element[propertyName] ~= nil then
        element[propertyName] = value
    else
        error("Property '" .. propertyName .. "' does not exist on the given element.")
    end
end
function UIUtils.getProperty(element, propertyName)
    if element and element[propertyName] ~= nil then
        return element[propertyName]
    else
        error("Property '" .. propertyName .. "' does not exist on the given element.")
    end
end
function UIUtils.addChild(parentElement, childElement)
    if parentElement and childElement then
        childElement.Parent = parentElement
    else
        error("Both parent and child elements must be valid.")
    end
end
function UIUtils.removeChild(childElement)
    if childElement and childElement.Parent then
        childElement.Parent = nil
    else
        error("Child element must be valid and have a parent.")
    end
end
return UIUtils