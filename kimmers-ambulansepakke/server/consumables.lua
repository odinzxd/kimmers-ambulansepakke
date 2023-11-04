local QBCore = exports['qb-core']:GetCoreObject()



QBCore.Functions.CreateUseableItem("pvk", function(source)
    TriggerClientEvent("consumables:client:pvk", source)
end)





RegisterNetEvent('consumables:server:pvk', function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem('pvk', 1)
end)