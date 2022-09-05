local settings = {
	actionid = 57613,
	centerRoom = {x = 2382, y = 2131, z = 7},
	storage = Storage.LaundBosses.FerumbrasTimer,
	bossPosition = {x = 2382, y = 2131, z = 7},
	kickPosition = {x = 1134, y = 1023, z = 7},
	playerTeleport = {x = 2382, y = 2135, z = 7}
}

local ferumbrasLever = Action()

function ferumbrasLever.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 2772 and item.actionid == settings.actionid then
		local playersInRoom = Game.getSpectators(Position(settings.centerRoom), false, false, 10, 10, 10, 10)
		for index, spectatorcheckface in ipairs(playersInRoom) do
			if spectatorcheckface:isPlayer() then
				creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Tem gente, perai!")
				return false
			end
		end
		for index, removePlayer in ipairs(playersInRoom) do
			if(removePlayer:isMonster()) then
				removePlayer:remove()
			end
		end
		Game.createMonster("Ferumbras", settings.bossPosition, false, true)
		local players = {}
		for i = 0, 4 do
			local player1 = Tile({x = (Position(item:getPosition()).x - 2) + i, y = Position(item:getPosition()).y + 1, z = Position(item:getPosition()).z}):getTopCreature()
			players[#players+1] = player1
		end
		for i, player in ipairs(players) do
			if player:getStorageValue(settings.storage) > os.time() then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Tem gente que não pode ai não em...")
				player:getPosition():sendMagicEffect(CONST_ME_POFF)
				return false
			end
		end
		for i, player in ipairs(players) do
			player:getPosition():sendMagicEffect(CONST_ME_POFF)
			player:teleportTo(Position(settings.playerTeleport), false)
			doSendMagicEffect(player:getPosition(), CONST_ME_TELEPORT)
			setPlayerStorageValue(player, settings.storage, os.time() + 20 * 60 * 60)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Tem 10 minutos quero nem saber.")
			addEvent(
				function(cid)
					local playerToRemove = Player(cid)
					if playerToRemove then
						local playerToRemovePosition = playerToRemove:getPosition()
						local leftTopCorner = Position(settings.centerRoom.x - 10, settings.centerRoom.y - 10, settings.centerRoom.z)
						local rightBottomCorner = Position(settings.centerRoom.x + 10, settings.centerRoom.y + 10, settings.centerRoom.z)
						if playerToRemovePosition:isInRange(leftTopCorner, rightBottomCorner) then
							playerToRemove:teleportTo(Position(settings.kickPosition))
							playerToRemove:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
							playerToRemove:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Noob vai treinar.")
						end
					end
				end,
				10 * 60 * 1000, player:getId()
			)
		end
	end
	return true
end

ferumbrasLever:aid(settings.actionid)
ferumbrasLever:register()
