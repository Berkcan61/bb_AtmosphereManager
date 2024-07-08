-- Local Variables
local validWeatherTypes = {
    ['EXTRASUNNY'] = true,
    ['CLEAR'] = true,
    ['NEUTRAL'] = true,
    ['SMOG'] = true,
    ['FOGGY'] = true,
    ['OVERCAST'] = true,
    ['CLOUDS'] = true,
    ['CLEARING'] = true,
    ['RAIN'] = true,
    ['THUNDER'] = true,
    ['SNOW'] = true,
    ['BLIZZARD'] = true,
    ['SNOWLIGHT'] = true,
    ['XMAS'] = true,
    ['HALLOWEEN'] = true
}

local adminLicenses = {
    ['license:06be449522380a1e34108ea149698966bc0b6e4f'] = true, -- Replace this with the actual FiveM license ID of the admin
    -- Add more admin licenses
}

-- Function to check admin permissions
local function isAdmin(source)
    local playerLicenses = GetPlayerIdentifiers(source)
    for _, id in pairs(playerLicenses) do
        if adminLicenses[id] then
            return true
        end
    end
    return false
end

-- Function to validate the weather type
local function isValidWeatherType(weatherType)
    return validWeatherTypes[weatherType] ~= nil
end

-- Function to change the weather
local function setWeather(weatherType)
    if isValidWeatherType(weatherType) then
        TriggerClientEvent('weatherManager:changeWeather', -1, weatherType)
        print("The weather is changed to " .. weatherType .. ".")
    else
        print("Invalid weather type entered. Please enter a valid weather type.")
    end
end

RegisterCommand('setweather', function(source, args, rawCommand)
    if not isAdmin(source) then
        print("You do not have permission to change the weather.")
        return
    end

    local weatherType = string.upper(args[1] or "")
    setWeather(weatherType)
end, false)

-- Add code for custom weather effects here
RegisterNetEvent('weatherManager:customWeatherEffect')
AddEventHandler('weatherManager:customWeatherEffect', function(effectName)
    if effectName == "SANDSTORM" then
        -- Example of a custom weather effect
        TriggerClientEvent('weatherManager:startSandstorm', -1)
        print("Sandstorm started.")
    end
end)

local weatherEffects = {
    SANDSTORM = function()
        TriggerClientEvent('weatherManager:startSandstorm', -1)
        print("Sandstorm started.")
    end,
    -- Add more weather effects
}

-- Add code for weather-dependent player attributes here
RegisterNetEvent('weatherManager:updatePlayerAttributes')
AddEventHandler('weatherManager:updatePlayerAttributes', function(weatherType)
    if weatherType == "SNOW" then
        -- Example: Players move slower in snow
        TriggerClientEvent('weatherManager:adjustPlayerSpeed', -1, 0.8)
        print("Player speed adjusted in snow.")
    elseif weatherType == "RAIN" then
        -- Example: Players slip more in rain
        TriggerClientEvent('weatherManager:adjustPlayerGrip', -1, 0.7)
        print("Player grip adjusted in rain.")
    end
end)

-- Add code for weather-dependent vehicle adjustments here
RegisterNetEvent('weatherManager:updateVehicleAttributes')
AddEventHandler('weatherManager:updateVehicleAttributes', function(weatherType)
    if weatherType == "RAIN" or weatherType == "SNOW" then
        -- Example: Reduced traction in rain or snow
        TriggerClientEvent('weatherManager:adjustVehicleTraction', -1, 0.7)
        print("Vehicle traction adjusted for " .. weatherType .. ".")
    elseif weatherType == "CLEAR" or weatherType == "EXTRASUNNY" then
        -- Example: Normal traction in clear weather
        TriggerClientEvent('weatherManager:adjustVehicleTraction', -1, 1.0)
        print("Vehicle traction reset to normal.")
    end
end)