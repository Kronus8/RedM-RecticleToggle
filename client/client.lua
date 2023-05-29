Citizen.CreateThread(function()
    local kvp = GetResourceKvpString("preferences.crosshairEnabled")
    if kvp ~= nil then
        if kvp == "false" then
            -- Hides Crosshair
            Citizen.InvokeNative(0x4CC5F2FC1332577F, 0xBB47198C)
            -- Hides Native Money
            Citizen.InvokeNative(0x4CC5F2FC1332577F, -950624750)
            Citizen.InvokeNative(0x4CC5F2FC1332577F, -66088566)
        end
    else
        print("Crosshair Prefrences KVP String is nil. Generating default KVP")
        SetResourceKvp("preferences.crosshairEnabled", "true")
    end 
end)

RegisterCommand("crosshair", function()
    local kvp = GetResourceKvpString("preferences.crosshairEnabled")
    if kvp ~= nil then
        if kvp == "true" then
            SetResourceKvp("preferences.crosshairEnabled", "false")
            -- Hides Crosshair
            Citizen.InvokeNative(0x4CC5F2FC1332577F, 0xBB47198C)
            -- Hides Native Money
            Citizen.InvokeNative(0x4CC5F2FC1332577F, -950624750)
            Citizen.InvokeNative(0x4CC5F2FC1332577F, -66088566)
        end

        if kvp == "false" then
            SetResourceKvp("preferences.crosshairEnabled", "true")
            Citizen.InvokeNative(0x8BC7C1F929D07BF3, 0xBB47198C)
        end
    end
end, false)