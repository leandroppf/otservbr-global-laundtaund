local boss = {
	name = 'tpm',
	storage = Storage.LaundBosses.TPM
}

local tpmBossKill = CreatureEvent("TPM")
function tpmBossKill.onKill(player, target)
	if player:getStorageValue(boss.storage) == 1 then
		return true
	end

	local targetMonster = target:getMonster()
	if not targetMonster then
		return true
	end

	local targetName = targetMonster:getName():lower()
	if targetName == boss.name then
		player:addAchievement('Laund Taund TPM')
		player:setStorageValue(boss.storage, 1)
	end

	return true
end

tpmBossKill:register()
