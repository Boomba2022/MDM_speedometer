function text(content)

    -- Text
    SetTextFont(2)
    SetTextProportional(0)
    SetTextScale(2.0,2.0)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.9,0.7)

    -- Rectangle
    DrawRect(0.93 ,0.8 ,0.08 ,0.05 ,24, 36, 46, 245)
end 

function fuel(fuelcontent)
    -- Text 
    SetTextFont(2)
    SetTextProportional(0)
    SetTextScale(2.0, 2.0)
    SetTextEntry("STRING")
    AddTextComponentString(fuelcontent)
    DrawText(0.9, 0.65)
end 

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(2)
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3,6

        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then 
            text(math.floor(speed))
        end 
    end 

end)