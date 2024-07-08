-- This thread sets the volume of various audio categories to zero
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
       
        -- Disable all ambient sounds
        SetAmbientZoneStatePersistent("AZ_DISTANT_SASQUATCH", false, false)
        SetAmbientZoneStatePersistent("AZ_SPECIAL_EDITION_CELEBRATION", false, false)
        
        -- Clear the audio scene
        SetAudioFlag("AllowRadioDuringSwitch", false)
        SetAudioFlag("MobileRadioInGame", false)
        SetAudioFlag("OnlyAllowScriptTriggerPoliceScanner", false)
        SetAudioFlag("PlayMenuMusic", false)
        SetAudioFlag("PoliceScannerDisabled", true)
        SetAudioFlag("DisableFlightMusic", true)
        
        -- Disable vehicle sounds
        SetVehicleRadioEnabled(Citizen.InvokeNative(0xC6F48A5D0891C729, 0), false)
        SetStaticEmitterEnabled("LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false)

        -- Set the volume of specific audio categories to zero
        Citizen.InvokeNative(0xF7F26C6E9CC9EBB8, "RADIO_MUTE", 1.0)
        Citizen.InvokeNative(0xF7F26C6E9CC9EBB8, "MASTER", 0.0)
        Citizen.InvokeNative(0xF7F26C6E9CC9EBB8, "MUSIC", 0.0)
        Citizen.InvokeNative(0xF7F26C6E9CC9EBB8, "SFX", 0.0)
        Citizen.InvokeNative(0xF7F26C6E9CC9EBB8, "DIALOGUE", 0.0)
        Citizen.InvokeNative(0xF7F26C6E9CC9EBB8, "RADIO", 0.0)
        Citizen.InvokeNative(0xF7F26C6E9CC9EBB8, "CUTSCENE", 0.0)
    end
end)