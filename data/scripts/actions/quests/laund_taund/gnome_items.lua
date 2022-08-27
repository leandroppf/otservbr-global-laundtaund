local rewards = {
	[1309] = { [27648] = 27648 }, --Gnome Armor
	[1310] = { [27649] = 27649, [27647] = 27647}, --Gnome legs & Gnome helmet
	[1311] = { [27650] = 27650, [27651] = 27651} --Gnome shield & Gnome sword
}

local laundTaundGnomeQuest = Action()
function laundTaundGnomeQuest.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Storage.LaundGnomeQuest) < 1 then
		player:setStorageValue(Storage.LaundGnomeQuest, 1)
		for itemId, value in pairs(rewards[item.uid]) do
			player:addItem(itemId, 1)
		end
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found o item que vc escolheu ué.")
		player:addAchievement('Laund Taund Gnome Quest')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty. Hmm danadinho!")
	end
	return true
end

for uniqueId, info in pairs(rewards) do
	laundTaundGnomeQuest:uid(uniqueId)
end

laundTaundGnomeQuest:register()
