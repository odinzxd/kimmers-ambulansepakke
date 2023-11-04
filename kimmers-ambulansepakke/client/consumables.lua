local QBCore = exports['qb-core']:GetCoreObject()



RegisterNetEvent('consumables:client:pvk', function()
    QBCore.Functions.Progressbar("pvk", Lang:t('consumables.pvk'), 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mini@repair",
        anim = "fixing_a_ped",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_ped", 1.0)
        TriggerServerEvent("consumables:server:pvk")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pvk"], "remove")
        QBCore.Functions.Notify (Lang:t('consumables.pvk3'), closestPlayer, "success")
        QBCore.Functions.Notify(Lang:t('consumables.pvk2'), "success")
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_ped", 1.0)
        QBCore.Functions.Notify(Lang:t('consumables.canceled'), "error")
    end)
end)