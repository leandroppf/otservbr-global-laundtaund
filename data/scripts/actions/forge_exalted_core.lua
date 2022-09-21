local forge = Action()

local count = 1
local porcentagem = 100 -- porcentagem de chance de forjar
local chance = { -- cada id significa 10% de chance de acerto
	[1] = 80,
	[2] = 60,
	[3] = 50,
	[4] = 35,
	[5] = 30,
	[6] = 25,
	[7] = 20,
	[8] = 15,
	[9] = 10,
	[10] = 5  
}

function forge.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not target or not target:isItem() then
		return false
	end

	local targetId = target:getId()

	local targetTier = target:getTier()
	local goldcount = ((target:getTier() * 1000000) + 1000000)

	if targetTier == 10 then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "This Item already has the maximum level of Forge.")
		player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "This Item already has the maximum level of Forge.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end

	if item:getCount(38652) <= 0 then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You don't have the amount of items needed to forge.")
		player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "You don't have the amount of items needed to forge.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end

	if not player:removeMoneyBank(goldcount) then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You need "..goldcount.." of gold to carry out the forge attempt.")
		player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "You need "..goldcount.." of gold to carry out the forge attempt.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end

	local rand = math.random(100)
	local chanceTier = target:getTier() and target:getTier() or 0
	if targetTier >= 1 then
		if rand > chance[chanceTier] then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "Ooh no, The Forge Failed.")
		player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "Ooh no, The Forge Failed.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		item:remove(1)
		return true
		end
	end

	if target:setTier(targetTier + 1) then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "Congratulations, the item was forged.")
		player:sendTextMessage(MESSAGE_STATUS_DEFAULT, "Congratulations, the item was forged.")
		player:getPosition():sendMagicEffect(50)
		target:setTier(targetTier + 1)
		item:remove(1)
	end
	return true
end

forge:id(38652)
forge:register()