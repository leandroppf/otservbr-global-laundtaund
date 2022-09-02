local config = {
	actionId = 57611,
	positionBoss = Position(2366, 2119, 7)
}

local izcandarTheBanished = MoveEvent()

function izcandarTheBanished.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if(player:getStorageValue(Storage.LaundBosses.IzcandarTheBanished) > os.time())then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have faced this boss in the last 2 hours.")
		player:teleportTo(fromPosition, true)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return false
	end

	setPlayerStorageValue(player, Storage.LaundBosses.IzcandarTheBanished, os.time() + 2 * 60 * 60)
	doSendMagicEffect(player:getPosition(), CONST_ME_TELEPORT)
	player:teleportTo(positionBoss)
	doSendMagicEffect(positionBoss, CONST_ME_TELEPORT)
	return true
end

izcandarTheBanished:type("stepin")


izcandarTheBanished:aid(config.actionId)

izcandarTheBanished:register()
