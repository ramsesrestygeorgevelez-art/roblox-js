local FunctionUtils = {}

function FunctionUtils.debounce(func, delay)
    local lastCall = 0
    return function(...)
        local currentTime = tick()
        if currentTime - lastCall >= delay then
            lastCall = currentTime
            return func(...)
        end
    end

end
function FunctionUtils.throttle(func, interval)
    local lastExecution = 0
    return function(...)
        local currentTime = tick()
        if currentTime - lastExecution >= interval then
            lastExecution = currentTime
            return func(...)
        end
    end
end
function FunctionUtils.memoize(func)
    local cache = {}
    return function(arg)
        if cache[arg] then
            return cache[arg]
        else
            local result = func(arg)
            cache[arg] = result
            return result
        end
    end
end
function FunctionUtils.compose(...)
    local funcs = {...}
    return function(arg)
        local result = arg
        for i = #funcs, 1, -1 do
            result = funcs[i](result)
        end
        return result
    end
end
function FunctionUtils.curry(func)
    local function curriedFunction(...)
        local args = {...}
        if #args >= debug.getinfo(func).nparams then
            return func(table.unpack(args))
        else
            return function(...)
                local newArgs = {...}
                return curriedFunction(table.unpack(args), table.unpack(newArgs))
            end
        end
    end
    return curriedFunction
end