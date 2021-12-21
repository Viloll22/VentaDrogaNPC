ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


-- Prix vente cannabis NPC
local WeedMin = 100
local WeedMax = 150


-- Vente cannabis

RegisterServerEvent("NPCVente:Weed")
AddEventHandler("NPCVente:Weed", function(num)
    
    local xPlayer = ESX.GetPlayerFromId(source)
    local nombre = xPlayer.getInventoryItem("weed_pooch")
    local count = 1
    if nombre.count >= num then
        local PrixWeed = math.random(WeedMin,WeedMax)
        local PrixWeedFinal = num * PrixWeed
        xPlayer.removeInventoryItem("weed_pooch", num)
        --xPlayer.addMoney(PrixWeedFinal)
        xPlayer.addAccountMoney('black_money', PrixWeedFinal)
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Ventas de cannabis", "Vendido cannabis ~g~"..num.."~w~\nDinero obtenido: ~g~"..PrixWeedFinal, "CHAR_LESTER", 8)
    elseif nombre.count < num and nombre.count>0 then
        num =nombre.count
        local PrixWeed = math.random(WeedMin,WeedMax)
        local PrixWeedFinal = num * PrixWeed
        xPlayer.removeInventoryItem("weed_pooch", num)
        xPlayer.addAccountMoney('black_money', PrixWeedFinal)
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Ventas de cannabis", "Vendido cannabis ~g~"..num.."~w~\nDinero obtenido: ~g~"..PrixWeedFinal, "CHAR_LESTER", 8)    
    else 
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Ventas de cannabis", "Si, dame cannabis ... Espera, pero... ¿Si no tienes bro? Largate!", "CHAR_LESTER", 8)
    end
end)

-- Prix vente Opium NPC
local OpiumMin = 100
local OpiumMax = 150


-- Vente opio
RegisterServerEvent("NPCVente:Opium")
AddEventHandler("NPCVente:Opium", function(num)
    local xPlayer = ESX.GetPlayerFromId(source)
    local nombre = xPlayer.getInventoryItem("opium_pooch")
    local count = 1
    if nombre.count >= num then
        local PrixOpium = math.random(OpiumMin,OpiumMax)
        local PrixOpiumFinal = num * PrixOpium
        xPlayer.removeInventoryItem("opium_pooch", num)
        --xPlayer.addMoney(PrixOpiumFinal)
        xPlayer.addAccountMoney('black_money', PrixOpiumFinal)
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Ventas de opio", "Vendido opio ~g~"..num.."~w~\nDinero obtenido: ~g~"..PrixOpiumFinal, "CHAR_LESTER", 8)
    elseif nombre.count < num and nombre.count>0 then
        num =nombre.count
        local PrixOpium = math.random(OpiumMin,OpiumMax)
        local PrixOpiumFinal = num * PrixOpium
        xPlayer.removeInventoryItem("opium_pooch", num)
        xPlayer.addAccountMoney('black_money', PrixOpiumFinal)
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Ventas de opio", "Vendido opio ~g~"..num.."~w~\nDinero obtenido: ~g~"..PrixOpiumFinal, "CHAR_LESTER", 8)    
    else 
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Ventas de opio", "Si, dame opio ... Espera, pero... ¿Si no tienes bro? Largate!", "CHAR_LESTER", 8)
    end
end)



-- Prix vente coke NPC
local cokeMin = 125
local cokeMax = 185


-- Vente coke
RegisterServerEvent("NPCVente:coke")
AddEventHandler("NPCVente:coke", function(num)
    local xPlayer = ESX.GetPlayerFromId(source)
    local nombre = xPlayer.getInventoryItem("coke_pooch")
    local count = 1
    if nombre.count >= num then
        local Prixcoke = math.random(cokeMin,cokeMax)
        local PrixcokeFinal = num * Prixcoke
        xPlayer.removeInventoryItem("coke_pooch", num)
        --xPlayer.addMoney(PrixcokeFinal)
        xPlayer.addAccountMoney('black_money', PrixcokeFinal)
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Ventas de Coca", "Vendida coca ~g~"..num.."~w~\nDinero obtenido: ~g~"..PrixcokeFinal, "CHAR_LESTER", 8)
    elseif nombre.count < num and nombre.count>0 then
        num =nombre.count
        local Prixcoke = math.random(cokeMin,cokeMax)
        local PrixcokeFinal = num * Prixcoke
        xPlayer.removeInventoryItem("coke_pooch", num)
        xPlayer.addAccountMoney('black_money', PrixcokeFinal)
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Ventas de Coca", "Vendido Coca ~g~"..num.."~w~\nDinero obtenido: ~g~"..PrixcokeFinal, "CHAR_LESTER", 8)    
    else 
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Ventas de Coca", "Si, dame Coca ... Espera, pero... ¿Si no tienes bro? Largate!", "CHAR_LESTER", 8)
    end
end)

-- Prix vente meth NPC
local methMin = 150
local methMax = 200

-- Vente meth
RegisterServerEvent("NPCVente:meth")
AddEventHandler("NPCVente:meth", function(num)
    local xPlayer = ESX.GetPlayerFromId(source)
    local nombre = xPlayer.getInventoryItem("meth_pooch")
    local count = 1
    if nombre.count >= num then
        local Prixmeth = math.random(methMin,methMax)
        local PrixmethFinal = num * Prixmeth
        xPlayer.removeInventoryItem("meth_pooch", num)
        --xPlayer.addMoney(PrixcokeFinal)
        xPlayer.addAccountMoney('black_money', PrixmethFinal)
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Venta de Meta", "Vendida meta ~g~"..num.."~w~\nDinero obtenido: ~g~"..PrixmethFinal, "CHAR_LESTER", 8)
    elseif nombre.count < num and nombre.count>0 then
        num =nombre.count
        local Prixmeth = math.random(methMin,methMax)
        local PrixmethFinal = num * Prixmeth
        xPlayer.removeInventoryItem("meth_pooch", num)
        xPlayer.addAccountMoney('black_money', PrixmethFinal)
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Ventas de Meta", "Vendido Meta ~g~"..num.."~w~\nDinero obtenido: ~g~"..PrixmethFinal, "CHAR_LESTER", 8)    
    else 
        TriggerClientEvent("NPCVente:Notification", source, "Actividad ilegal", "~g~Ventas de Meta", "Si, dame Meta ... Espera, pero... ¿Si no tienes bro? Largate!", "CHAR_LESTER", 8)
    end
end)

-- Appel LSPD 

RegisterServerEvent("NPCVente:AppelLSPD")
AddEventHandler("NPCVente:AppelLSPD", function(coords)
    local xPlayers	= ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if xPlayer.job.name == 'police' then
            TriggerClientEvent('NPCVente:AffichageAppel', xPlayers[i], coords)
        end
    end
end)