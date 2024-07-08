-- Function to change the server time
function SetTime(source, hour, minute)
    -- Ensure hour and minute are within valid ranges
    if hour < 0 or hour > 23 or minute < 0 or minute > 59 then
        TriggerClientEvent('showNotification', source, "^1Error: Invalid time values: hour must be 0-23 and minute must be 0-59")
        return
    end

    -- Send the time change to all clients
    TriggerClientEvent('setTime', -1, hour, minute)
end

RegisterCommand('settime', function(source, args, rawCommand)
    -- Check if the correct number of arguments are provided
    if #args ~= 2 then
        TriggerClientEvent('showNotification', source, "^1Error: Usage: /settime <hour> <minute>")
        return
    end

    local hour = tonumber(args[1])
    local minute = tonumber(args[2])
    
    -- Validate hour and minute
    if hour ~= nil and minute ~= nil then
        SetTime(source, hour, minute)
    else
        TriggerClientEvent('showNotification', source, "^1Error: Invalid arguments: hour and minute must be numbers")
    end
end, false)
