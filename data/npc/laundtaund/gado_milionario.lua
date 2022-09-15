local internalNpcName = "Gado Milionario"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 25
}

npcConfig.flags = {
	floorchange = false
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{text = 'Compro items de Gado'},
	{text = 'Se vender pra mim e corno'}
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcHandler:setMessage(MESSAGE_GREET, 'Deu hi e corno!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Ja vai corno?.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'Ja vai tarde corno.')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
	--BUY

	{ itemName = "fire mushroom", clientId = 3731, buy = 500 },
	{ itemName = "flask of rust remover", clientId = 9016, buy = 50 },
	{ itemName = "lasting exercise sword", clientId = 35285, buy = 7000000, count = 14400 }, 
	{ itemName = "lasting exercise bow", clientId = 35288, buy = 7000000 , count = 14400},
	{ itemName = "lasting exercise club", clientId = 35287, buy = 7000000 , count = 14400 },
	{ itemName = "lasting exercise axe", clientId = 35286, buy = 7000000 , count = 14400},
	{ itemName = "lasting exercise rod", clientId = 35289, buy = 7000000 , count = 14400 },
	{ itemName = "lasting exercise wand", clientId = 35290, buy = 7000000 , count = 14400},

	--SELL

	-- Soul War
	{ itemName = "soultainter", clientId = 34090, sell = 1000000 },
	{ itemName = "soulstrider", clientId = 34093, sell = 1000000 },
	{ itemName = "soulshroud", clientId = 34096, sell = 1000000 },
	{ itemName = "soulshredder", clientId = 34083, sell = 1000000 },
	{ itemName = "soulshell", clientId = 34094, sell = 1000000 },
	{ itemName = "soulshanks", clientId = 34092, sell = 1000000 },
	{ itemName = "soulpiercer", clientId = 34089, sell = 1000000 },
	{ itemName = "soulmantle", clientId = 34095, sell = 1000000 },
	{ itemName = "soulmaimer", clientId = 34087, sell = 1000000 },
	{ itemName = "soulhexer", clientId = 34091, sell = 1000000 },
	{ itemName = "souleater", clientId = 34085, sell = 1000000 },
	{ itemName = "soulcutter", clientId = 34082, sell = 1000000 },
	{ itemName = "soulcrusher", clientId = 34086, sell = 1000000 },
	{ itemName = "soulbleeder", clientId = 34088, sell = 1000000 },
	{ itemName = "soulbiter", clientId = 34084, sell = 1000000 },
	{ itemName = "soulbastion", clientId = 34099, sell = 1000000 },
	{ itemName = "pair of soulwalkers", clientId = 34097, sell = 1000000 },
	{ itemName = "pair of soulstalkers", clientId = 34098, sell = 1000000 },

	-- Grand Master Oberon
	{ itemName = "falcon rod", clientId = 28716, sell = 250000 },
	{ itemName = "falcon wand", clientId = 28717, sell = 250000 },
	{ itemName = "falcon mace", clientId = 28725, sell = 250000 },
	{ itemName = "falcon longsword", clientId = 28723, sell = 250000 },
	{ itemName = "falcon bow", clientId = 28718, sell = 250000 },
	{ itemName = "falcon battleaxe", clientId = 28724, sell = 250000 },
	{ itemName = "falcon plate", clientId = 28719, sell = 250000 },
	{ itemName = "falcon greaves", clientId = 28720, sell = 250000 },
	{ itemName = "falcon coif", clientId = 28715, sell = 250000 },
	{ itemName = "falcon circlet", clientId = 28714, sell = 250000 },
	{ itemName = "falcon shield", clientId = 28721, sell = 250000 },

	-- The Nightmare Beast
	{ itemName = "dark whispers", clientId = 29427, sell = 150000 },
	{ itemName = "enchanted sleep shawl", clientId = 30342, sell = 150000 },
	{ itemName = "sleep shawl", clientId = 29428, sell = 150000 },
	-- King Zelos
	{ itemName = "toga mortis", clientId = 31583, sell = 150000 },
	{ itemName = "galea mortis", clientId = 31582, sell = 150000 },
	{ itemName = "mortal mace", clientId = 31580, sell = 150000 },
	{ itemName = "bow of cataclysm", clientId = 31581, sell = 150000 },
	-- Plagirath
	{ itemName = "maimer", clientId = 22762, sell = 150000 },
	{ itemName = "plague bite", clientId = 22759, sell = 150000 },
	-- Malofur Mangrinder
	{ itemName = "resizer", clientId = 29419, sell = 150000 },
	{ itemName = "shoulder plate", clientId = 29420, sell = 150000 },
	-- Mazoran
	{ itemName = "impaler of the igniter", clientId = 22760, sell = 150000 },
	-- Izcandar The Banished
	{ itemName = "summerblade", clientId = 29421, sell = 150000 },
	{ itemName = "winterblade", clientId = 29422, sell = 150000 },
	-- Faceless Bane
	{ itemName = "enchanted pendulet", clientId = 30344, sell = 150000 },
	{ itemName = "pendulet", clientId = 29429, sell = 150000 },
	{ itemName = "ectoplasmic shield", clientId = 29430, sell = 150000 },
	{ itemName = "spirit guide", clientId = 29431, sell = 150000 },
	-- Urmahlullu
	{ itemName = "enchanted theurgic amulet", clientId = 30403, sell = 150000 },
	{ itemName = "amulet of theurgy", clientId = 30401, sell = 150000 },
	{ itemName = "rainbow necklace", clientId = 30323, sell = 150000 },
	{ itemName = "winged boots", clientId = 31617, sell = 150000 },
	{ itemName = "tagralt blade", clientId = 31614, sell = 150000 },
	-- Scarlett Etzel
	{ itemName = "cobra amulet", clientId = 31631, sell = 150000 },
	{ itemName = "cobra wand", clientId = 30399, sell = 150000 },
	{ itemName = "cobra sword", clientId = 30398, sell = 150000 },
	{ itemName = "cobra rod", clientId = 30400, sell = 150000 },
	{ itemName = "cobra hood", clientId = 30397, sell = 150000 },
	{ itemName = "cobra crossbow", clientId = 30393, sell = 150000 },
	{ itemName = "cobra axe", clientId = 30396, sell = 150000 },
	{ itemName = "cobra club", clientId = 30395, sell = 150000 },
	-- Drume
	{ itemName = "lion rod", clientId = 34151, sell = 150000 },
	{ itemName = "lion amulet", clientId = 34158, sell = 150000 },
	{ itemName = "lion wand", clientId = 34152, sell = 150000 },
	{ itemName = "lion spellbook", clientId = 34153, sell = 150000 },
	{ itemName = "lion longbow", clientId = 34150, sell = 150000 },
	{ itemName = "lion axe", clientId = 34253, sell = 150000 },
	{ itemName = "lion hammer", clientId = 34254, sell = 150000 },
	{ itemName = "lion longsword", clientId = 34155, sell = 150000 },
	{ itemName = "lion shield", clientId = 34154, sell = 150000 },
	{ itemName = "lion plate", clientId = 34157, sell = 150000 },
	{ itemName = "lion spangenhelm", clientId = 34156, sell = 150000 }
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, inBackpacks, name, totalCost)
	npc:sellItem(player, itemId, amount, subType, true, inBackpacks, 2854)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Comprou %ix %s por %i %s. É muito corno mesmo", amount, name, totalCost, ItemType(npc:getCurrency()):getPluralName():lower()))
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, clientId, subtype, amount, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Vendeu %ix %s por %i de grana. Coisa de gado.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

npcType:register(npcConfig)
