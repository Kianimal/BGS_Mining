VorpInv = exports.vorp_inventory:vorp_inventoryApi()

exports.vorp_inventory:registerUsableItem(Config.Pickaxe, function(data)
	local _source = data.source
	local meta = data.item.metadata
	exports.vorp_inventory:closeInventory(_source)
	TriggerClientEvent("BGS_Mining:AttachPickaxe", _source, meta)
end)

RegisterServerEvent("BGS_Mining:pickaxecheck")
AddEventHandler("BGS_Mining:pickaxecheck", function(metadata)
	local _source = source
	local meta
	if _source then
		local pickaxe = exports.vorp_inventory:getItemContainingMetadata(_source, Config.Pickaxe, metadata, nil)
		if pickaxe then
			meta = pickaxe["metadata"]
		else
			meta = metadata
		end
		if meta.durability == nil then
			local durability = 100 - Config.PickaxeDamage
			VorpInv.subItem(_source, Config.Pickaxe, 1, {})
			VorpInv.addItem(_source, Config.Pickaxe, 1, { description = "Durability = " .. durability, durability = durability })
			TriggerClientEvent("BGS_Mining:pickaxechecked", _source, { description = "Durability = " .. durability, durability = durability }, false)
		else
			local durability = meta.durability - Config.PickaxeDamage
			local description = "Durability = "
			VorpInv.subItem(_source, Config.Pickaxe, 1, meta)
			if 1 > durability then
				TriggerClientEvent("BGS_Mining:pickaxechecked", _source, meta, true)
			else
				VorpInv.addItem(_source, Config.Pickaxe, 1, { description = description .. durability, durability = durability })
				TriggerClientEvent("BGS_Mining:pickaxechecked", _source, { description = description .. durability, durability = durability }, false)
			end
		end
	end
end)

RegisterServerEvent("BGS_Mining:CountCheck")
AddEventHandler("BGS_Mining:CountCheck", function()
	local _source = source
	if _source then
		local count = exports.vorp_inventory:getItemCount(_source, nil, Config.Pickaxe)
		if count == 0 or count == nil then
			TriggerClientEvent("BGS_Mining:RemovePickaxe", _source)
		end
	end
end)

local function keysx(table)
	local keys = 0
	for k, v in pairs(table) do
		keys = keys + 1
	end
	return keys
end

local function shuffle(tbl)
	for i = #tbl, 2, -1 do
		local j = math.random(i)
		tbl[i], tbl[j] = tbl[j], tbl[i]
	end
	return tbl
end

RegisterServerEvent('BGS_Mining:addItem')
AddEventHandler('BGS_Mining:addItem', function(mineSpot)
	local _source = source
	local chance = math.random(1, 10)
	local itemTable = shuffle(mineSpot.items)
	local reward = {}
	for k, v in pairs(itemTable) do
		if v.chance >= chance then
			table.insert(reward, v)
		end
	end
	if reward and #reward < 1 then
		TriggerClientEvent("vorp:TipRight", _source, "You found nothing", 3000)
		return
	end
	local chance2 = math.random(1, keysx(reward))
	local count = math.random(1, reward[chance2].amount)
	TriggerEvent("vorpCore:canCarryItems", tonumber(_source), count, function(canCarry)
		TriggerEvent("vorpCore:canCarryItem", tonumber(_source), reward[chance2].name, count, function(canCarry2)
			if canCarry and canCarry2 then
				VorpInv.addItem(_source, reward[chance2].name, count)
				TriggerClientEvent("vorp:TipRight", _source, "You found " .. reward[chance2].label, 3000)
			else
				TriggerClientEvent("vorp:TipRight", _source, "You can't carry any more " .. reward[chance2].label, 3000)
			end
		end)
	end)
end)
