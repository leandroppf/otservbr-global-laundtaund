local config = {
	actionId = 57609,
	positionBoss = Position(2353, 2135, 7)
}

local kingZelos = MoveEvent()

function kingZelos.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if(player:getStorageValue(Storage.LaundBosses.KingZelos) > os.time())then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have faced this boss in the last 2 hours.")
		player:teleportTo(fromPosition, true)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return false
	end

	setPlayerStorageValue(player, Storage.LaundBosses.KingZelos, os.time() + 2 * 60 * 60)
	doSendMagicEffect(player:getPosition(), CONST_ME_TELEPORT)
	player:teleportTo(positionBoss)
	doSendMagicEffect(positionBoss, CONST_ME_TELEPORT)
end

kingZelos:type("stepin")


kingZelos:aid(config.actionId)

kingZelos:register()
