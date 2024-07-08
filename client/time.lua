RegisterNetEvent('setTime')
AddEventHandler('setTime', function(hour, minute)
    NetworkOverrideClockTime(hour, minute, 0)
    TriggerEvent('chat:addMessage', {args = {"^2Success", "The time has been set to: " .. string.format("%02d", hour) .. ":" .. string.format("%02d", minute)}})
end)

RegisterNetEvent('showNotification')
AddEventHandler('showNotification', function(message)
    -- Display the notification using chat message
    TriggerEvent('chat:addMessage', {
        args = {message}
    })
end)
