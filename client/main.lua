--[[ ===================================================== ]]--
--[[         QBCore Server Wipe Script by MaDHouSe         ]]--
--[[ ===================================================== ]]--

local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("qb-wipeserver:client:createNewChar", function(source)
    TriggerEvent('qb-multicharacter:client:chooseChar')
end)