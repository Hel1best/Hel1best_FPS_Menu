ESX = exports["es_extended"]:getSharedObject()

RegisterCommand('fps', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('Hel1best:fpsmenu', _source)
end)
