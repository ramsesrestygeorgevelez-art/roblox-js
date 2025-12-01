local Utils = {}
function Utils.getUtil(utilName)
    local utilModule = script:FindFirstChild(utilName)
    if utilModule and utilModule:IsA("ModuleScript") then
        return require(utilModule)
    else
        error("Util '" .. utilName .. "' not found.")
    end
end
return Utils