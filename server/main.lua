--[[ ===================================================== ]]--
--[[         QBCore Server Wipe Script by MaDHouSe         ]]--
--[[ ===================================================== ]]--

local QBCore = exports['qb-core']:GetCoreObject()

local function isAdmin(source)
    local isAdmin = false
    if IsPlayerAceAllowed(source, 'command') then
        isAdmin = true
    end
    return isAdmin
end

local function truncateTable(table)
    MySQL.Async.execute('TRUNCATE TABLE '..table) 
end

local function runWipe()
    for i = 1, #Config.CleanUpWipe do
        truncateTable(Config.CleanUpWipe[i].table)
    end
    if Config.WipeAllPlayers then
        for i = 1, #Config.WipePlayers do
            truncateTable(Config.WipePlayers[i].table)
        end
    end
end

local function wipeServer(source)
    if isAdmin(source) then
        if Config.WipeAllPlayers then
            TriggerClientEvent('QBCore:Notify', -1, Lang:t('info.wipe_started', {type = 'Total Wipe'}), "success", Config.WipeAfterSecs)
        else
            TriggerClientEvent('QBCore:Notify', -1, Lang:t('info.wipe_started', {type = 'Cleanup Wipe'}), "success", Config.WipeAfterSecs)
        end
        Wait(Config.WipeAfterSecs)
        runWipe()
        Wait(Config.ShowTimeNotify)
        TriggerClientEvent('QBCore:Notify', -1, Lang:t('info.succes_wiped'), "success", Config.ShowTimeNotify)
        if Config.WipeAllPlayers then
            Wait(Config.ShowTimeNotify + 500)
            TriggerClientEvent('qb-wipeserver:client:createNewChar', -1)
        end
    else
        TriggerClientEvent('QBCore:Notify', -1, Lang:t('info.no_permission'), "error", Config.ShowTimeNotify)
    end
end

QBCore.Commands.Add('wipeserver', Lang:t('info.wipe_command'), {}, true, function(source)
    wipeServer(source)
end, 'admin')
