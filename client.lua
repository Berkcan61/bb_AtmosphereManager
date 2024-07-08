-- Use local variables for reuse
local weatherChangeTime = 10.0
local waitTime = 10000

RegisterNetEvent('weatherManager:changeWeather')
AddEventHandler('weatherManager:changeWeather', function(weatherType)
    -- Error handling
    if type(weatherType) ~= 'string' then
        print("Invalid weather type")
        return
    end

    SetWeatherTypeOverTime(weatherType, weatherChangeTime)
    Citizen.Wait(waitTime)
    ClearWeatherTypePersist()
    SetWeatherTypeNowPersist(weatherType)
    SetWeatherTypeNow(weatherType)
    SetOverrideWeather(weatherType)
    Notify("The weather has been changed to " .. weatherType .. ".")
end)

function Notify(text)
    -- Error handling
    if type(text) ~= 'string' then
        print("Invalid text")
        return
    end

    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end