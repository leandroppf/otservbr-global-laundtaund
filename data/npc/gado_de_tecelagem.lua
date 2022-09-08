local internalNpcName = "Gado de Tecelagem"
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

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end
	-- PEDINDO ADDON
	if MsgContains(message, "first hunter") then -- Hunter first addon
		if player:getStorageValue(Storage.OutfitQuest.Hunter.AddonHat) == 1 then
			npcHandler:say("Mas vc já tem o addon 1 ué", npc, creature)
		else
			npcHandler:say("Ta com os items ai?", npc, creature)
			npcHandler:setTopic(playerId, 1)
		end
	elseif MsgContains(message, "second hunter") then -- Hunter second addon
		if player:getStorageValue(Storage.OutfitQuest.Hunter.AddonGlove) == 1 then
			npcHandler:say("Mas vc já tem o addon 2 ué", npc, creature)
		else
			npcHandler:say("Ta com a gloves ai?", npc, creature)
			npcHandler:setTopic(playerId, 2)
		end
	elseif MsgContains(message, "first citizen") then -- Citizen first addon
		if player:getStorageValue(Storage.OutfitQuest.Citizen.AddonBackpack) == 1 then
			npcHandler:say("Mas vc já tem o addon 1 ué", npc, creature)
		else
			npcHandler:say("Ta com os items ai?", npc, creature)
			npcHandler:setTopic(playerId, 3)
		end
	elseif MsgContains(message, "second citizen") then -- Citizen second addon
		if player:getStorageValue(Storage.OutfitQuest.Citizen.AddonHat) == 1 then
			npcHandler:say("Mas vc já tem o addon 2 ué", npc, creature)
		else
			npcHandler:say("Ta com os items ai?", npc, creature)
			npcHandler:setTopic(playerId, 4)
		end
	-- RESPONDENDO YES
	elseif MsgContains(message, "yes") then
		if npcHandler:getTopic(playerId) == 1 then -- Hunter first addon
			if player:getItemCount(5947) >= 1 and player:getItemCount(5876) >= 100 and player:getItemCount(5948) >= 100 and player:getItemCount(5891) >= 5 and player:getItemCount(5887) >= 1 and player:getItemCount(5888) >= 1 and player:getItemCount(5889) >= 1 then
				player:removeItem(5947, 1)
				player:removeItem(5876, 100)
				player:removeItem(5948, 100)
				player:removeItem(5891, 5)
				player:removeItem(5887, 1)
				player:removeItem(5888, 1)
				player:removeItem(5889, 1)
				npcHandler:say("Então toma", npc, creature)
				player:setStorageValue(Storage.OutfitQuest.Hunter.AddonHat, 1)
				player:addOutfitAddon(129, 1)
				player:addOutfitAddon(137, 1)
			end
		elseif npcHandler:getTopic(playerId) == 2 then -- Hunter second addon
			if player:getItemCount(5875) >= 1 then
				player:removeItem(5875, 1)
				npcHandler:say("Então toma", npc, creature)
				player:setStorageValue(Storage.OutfitQuest.Hunter.AddonGlove, 1)
				player:addOutfitAddon(129, 2)
				player:addOutfitAddon(137, 2)
			end
		elseif npcHandler:getTopic(playerId) == 3 then -- Citizen first addon
			if player:getItemCount(5878) >= 100 then
				player:removeItem(5878, 100)
				npcHandler:say("Então toma", npc, creature)
				player:setStorageValue(Storage.OutfitQuest.Citizen.AddonBackpack, 1)
				player:addOutfitAddon(128, 1)
				player:addOutfitAddon(136, 1)
			end
		elseif npcHandler:getTopic(playerId) == 4 then -- Citizen second addon
			if player:getItemCount(5890) >= 100 and player:getItemCount(5902) >= 50 and player:getItemCount(3374) >= 1 then
				player:removeItem(5890, 100)
				player:removeItem(5902, 50)
				player:removeItem(3374, 1)
				npcHandler:say("Então toma", npc, creature)
				player:setStorageValue(Storage.OutfitQuest.Citizen.AddonHat, 1)
				player:addOutfitAddon(128, 2)
				player:addOutfitAddon(136, 2)
			end
		end
	end
end

npcHandler:setMessage(MESSAGE_GREET, "E ae, vai dar um tapa no visual |PLAYERNAME|?")
npcHandler:setMessage(MESSAGE_FAREWELL, "ja vai tarde.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "ja vai tarde.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcType:register(npcConfig)
