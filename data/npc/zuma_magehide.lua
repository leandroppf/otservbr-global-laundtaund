local internalNpcName = "Zuma Magehide"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 138,
	lookHead = 58,
	lookBody = 19,
	lookLegs = 0,
	lookFeet = 132,
	lookAddons = 3
}

npcConfig.flags = {
	floorchange = false
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

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
	{ itemName = "axe ring", clientId = 3092, buy = 500 },
	{ itemName = "bronze amulet", clientId = 3056, buy = 100, count = 200 },
	{ itemName = "club ring", clientId = 3093, buy = 500 },
	{ itemName = "dragon necklace", clientId = 3085, buy = 1000, count = 200 },
	{ itemName = "dwarven ring", clientId = 3097, buy = 3000 },
	{ itemName = "elven amulet", clientId = 3082, buy = 500, count = 50 },
	{ itemName = "energy ring", clientId = 3051, buy = 5000 },
	{ itemName = "garlic necklace", clientId = 3083, buy = 100, count = 150 },
	{ itemName = "life ring", clientId = 3052, buy = 900 },
	{ itemName = "might ring", clientId = 3048, buy = 5000, count = 20 },
	{ itemName = "power ring", clientId = 3050, buy = 100 },
	{ itemName = "protection amulet", clientId = 3084, buy = 700, count = 250 },
	{ itemName = "ring of healing", clientId = 3098, buy = 2000 },
	{ itemName = "silver amulet", clientId = 3054, buy = 100, count = 200 },
	{ itemName = "stealth ring", clientId = 3049, buy = 5000 },
	{ itemName = "stone skin amulet", clientId = 3081, buy = 5000, count = 5 },
	{ itemName = "strange talisman", clientId = 3045, buy = 100, count = 200 },
	{ itemName = "sword ring", clientId = 3091, buy = 500 },
	{ itemName = "time ring", clientId = 3053, buy = 5000 },
	{ itemName = "collar of blue plasma", clientId = 23542, sell = 6000 },
	{ itemName = "collar of green plasma", clientId = 23543, sell = 6000 },
	{ itemName = "collar of red plasma", clientId = 23544, sell = 6000 },
	{ itemName = "collar of blue plasma", clientId = 23542, buy = 6000 },
	{ itemName = "collar of green plasma", clientId = 23543, buy = 6000 },
	{ itemName = "collar of red plasma", clientId = 23544, buy = 6000 },
	{ itemName = "condensed energy", clientId = 23501, sell = 260 },
	{ itemName = "crystal bone", clientId = 23521, sell = 250 },
	{ itemName = "crystallized anger", clientId = 23507, sell = 400 },
	{ itemName = "curious matter", clientId = 23511, sell = 430 },
	{ itemName = "dangerous proto matter", clientId = 23515, sell = 300 },
	{ itemName = "energy ball", clientId = 23523, sell = 300 },
	{ itemName = "energy vein", clientId = 23508, sell = 270 },
	{ itemName = "frozen lightning", clientId = 23519, sell = 270 },
	{ itemName = "glistening bone", clientId = 23522, sell = 250 },
	{ itemName = "green bandage", clientId = 25697, sell = 180 },
	{ itemName = "instable proto matter", clientId = 23516, sell = 300 },
	{ itemName = "little bowl of myrrh", clientId = 25702, sell = 500 },
	{ itemName = "odd organ", clientId = 23510, sell = 410 },
	{ itemName = "plasma pearls", clientId = 23506, sell = 250 },
	{ itemName = "plasmatic lightning", clientId = 23520, sell = 270 },
	{ itemName = "ring of blue plasma", clientId = 23529, sell = 8000 },
	{ itemName = "ring of green plasma", clientId = 23531, sell = 8000 },
	{ itemName = "ring of red plasma", clientId = 23533, sell = 8000 },
	{ itemName = "ring of blue plasma", clientId = 23529, buy = 8000 },
	{ itemName = "ring of green plasma", clientId = 23531, buy = 8000 },
	{ itemName = "ring of red plasma", clientId = 23533, buy = 8000 },
	{ itemName = "single human eye", clientId = 25701, sell = 1000 },
	{ itemName = "small energy ball", clientId = 23524, sell = 250 },
	{ itemName = "solid rage", clientId = 23517, sell = 310 },
	{ itemName = "spark sphere", clientId = 23518, sell = 350 },
	{ itemName = "sparkion claw", clientId = 23502, sell = 290 },
	{ itemName = "sparkion legs", clientId = 23504, sell = 310 },
	{ itemName = "sparkion stings", clientId = 23505, sell = 280 },
	{ itemName = "sparkion tail", clientId = 23503, sell = 300 },
	{ itemName = "strange proto matter", clientId = 23513, sell = 300 },
	{ itemName = "volatile proto matter", clientId = 23514, sell = 300 }
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Bought %ix %s for %i %s.", amount, name, totalCost, ItemType(npc:getCurrency()):getPluralName():lower()))
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType)
end

npcType:register(npcConfig)
