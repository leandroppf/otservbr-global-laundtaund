local config = {
	actionId = 57612,
	positionReward = Position(2088, 2122, 6)
}

local fabulousLegsRewardTp = MoveEvent()

function fabulousLegsRewardTp.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if(player:getStorageValue(Storage.LaundBosses.TPM) == 1) then
		doSendMagicEffect(player:getPosition(), CONST_ME_TELEPORT)
		player:teleportTo(positionReward)
		doSendMagicEffect(positionReward, CONST_ME_TELEPORT)
	end
end

fabulousLegsRewardTp:type("stepin")

fabulousLegsRewardTp:aid(config.actionId)

fabulousLegsRewardTp:register()
