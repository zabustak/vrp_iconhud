local Tunnel =  module("vrp", "lib/Tunnel")

hud = Tunnel.getInterface("vrp_iconhud","vvrp_iconhud")




Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        local thirst, hunger = hud.GetBasics()
        SendNUIMessage({
            armor = GetPedArmour(GetPlayerPed(-1)),
            health = (GetEntityHealth(GetPlayerPed(-1))-100),
            hunger = hunger,
            thirst = thirst
        })
    end
end)