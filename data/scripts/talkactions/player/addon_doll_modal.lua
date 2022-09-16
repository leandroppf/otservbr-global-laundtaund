local config = {
	expensiveDollID = 8778, -- jester doll
	dollID = 10227, -- nightmare doll
	cheapDollID = 27845, -- citizen doll
}

local expensiveOutfits = {
	--config
	-- Main Window Messages (The first window the player sees)
	mainTitle = "Escolhe uma roupinha cara. Rico!",
	mainMsg = "Voce vai ganhar o addon 1 e 2 em.",

	-- Already Owned Window (The window that appears when the player already owns the addon)
	ownedTitle = "EEEEEPA!",
	ownedMsg = "Voce ja tem esse ue.",

	-- No Doll in Backpack (The window that appears when the player doesnt have the doll in their backpack)
	dollTitle = "EEEEEPA!",
	dollMsg = "Tem que ter um dos addon dolls ue",
	-- End Config

	-- Outfit Table
	[1] = {name = "Battle Mage", male = 1069, female = 1070},
	[2] = {name = "Cave Explorer", male = 574, female = 575},
	[3] = {name = "Citizen of Issavi", male = 1386, female = 1387},
	[4] = {name = "Deepling", male = 463, female = 464},
	[5] = {name = "Demon", male = 541, female = 542},
	[6] = {name = "Discoverer", male = 1094, female = 1095},
	[7] = {name = "Dragon Slayer", male = 1288, female = 1289},
	[8] = {name = "Dream Warden", male = 577, female = 578},
	[9] = {name = "Elementalist", male = 432, female = 433},
	[10] = {name = "Falconer", male = 1371, female = 1372},
	[11] = {name = "Festive", male = 931, female = 929},
	[12] = {name = "Formal Dress", male = 1460, female = 1461},
	[13] = {name = "Glooth Engineer", male = 610, female = 618},
	[14] = {name = "Golden", male = 1210, female = 1211},
	[15] = {name = "Hand of the inquisition", male = 1243, female = 1244},
	[16] = {name = "Insectoid", male = 465, female = 466},
	[17] = {name = "Makeshift Warrior", male = 1042, female = 1043},
	[18] = {name = "Orcsoberfest Garb", male = 1251, female = 1252},
	[19] = {name = "Poltergeist", male = 1270, female = 1271},
	[20] = {name = "Rascoohan", male = 1371, female = 1372},
	[21] = {name = "Recruiter", male = 746, female = 745},
	[22] = {name = "Revenant", male = 1322, female = 1323},
	[23] = {name = "Rift Warrior", male = 846, female = 845},
	[24] = {name = "Royal Bounacean Advisor", male = 1436, female = 1437},
	[25] = {name = "Royal Costume", male = 1457, female = 1456},
}

local outfits = {
	--config
	-- Main Window Messages (The first window the player sees)
	mainTitle = "Escolhe uma roupinha.",
	mainMsg = "Voce vai ganhar o addon 1 e 2 em.",

	-- Already Owned Window (The window that appears when the player already owns the addon)
	ownedTitle = "EEEEEPA!",
	ownedMsg = "Voce ja tem esse ue.",

	-- No Doll in Backpack (The window that appears when the player doesnt have the doll in their backpack)
	dollTitle = "EEEEEPA!",
	dollMsg = "Tem que ter um dos addon dolls ue",
	-- End Config

	-- Outfit Table
	[1] = {name = "Afflicted", male = 430, female = 431},
	[2] = {name = "Assassin", male = 152, female = 156},
	[3] = {name = "Beggar", male = 153, female = 157},
	[4] = {name = "Brotherhood", male = 278, female = 279},
	[5] = {name = "Crystal Warlord", male = 512, female = 513},
	[6] = {name = "Deepling", male = 463, female = 464},
	[7] = {name = "Demonhunter", male = 289, female = 288},
	[8] = {name = "Dream Warrior", male = 1146, female = 1147},
	[9] = {name = "Jester", male = 273, female = 270},
	[10] = {name = "Nightmare", male = 268, female = 269},
	[11] = {name = "Norse", male = 251, female = 252},
	[12] = {name = "Percht Raider", male = 1161, female = 1162},
	[13] = {name = "Pirate", male = 151, female = 155},
	[14] = {name = "Shaman", male = 154, female = 158},
	[15] = {name = "Soil Guardian", male = 516, female = 514},
	[16] = {name = "Warmaster", male = 335, female = 336},
	[17] = {name = "Wayfarer", male = 367, female = 366},
	[18] = {name = "Yalaharian", male = 325, female = 324},
}

local cheapOutfits = {
	--config
	-- Main Window Messages (The first window the player sees)
	mainTitle = "Escolhe uma roupinha.",
	mainMsg = "Voce vai ganhar o addon 1 e 2 em.",

	-- Already Owned Window (The window that appears when the player already owns the addon)
	ownedTitle = "EEEEEPA!",
	ownedMsg = "Voce ja tem esse ue.",

	-- No Doll in Backpack (The window that appears when the player doesnt have the doll in their backpack)
	dollTitle = "EEEEEPA!",
	dollMsg = "Tem que ter um dos addon dolls ue",
	-- End Config

	-- Outfit Table
	[1] = {name = "Citizen", male = 128, female = 136},
	[2] = {name = "Hunter", male = 129, female = 137},
	[3] = {name = "Knight", male = 131, female = 139},
	[4] = {name = "Barbarian", male = 143, female = 147},
	[5] = {name = "Druid", male = 144, female = 148},
	[6] = {name = "Noble", male = 132, female = 140},
	[7] = {name = "Oriental", male = 146, female = 150},
	[8] = {name = "Warrior", male = 134, female = 142},
	[9] = {name = "Wizard", male = 145, female = 149},
}

local addonsDollModal = TalkAction("!addondoll")

function addonsDollModal.onSay(player, words, param)
	-- Codigo para expensive doll
	if player:getItemCount(config.expensiveDollID) > 0 then
		player:sendAddonWindow(expensiveOutfits, config.expensiveDollID)
		return true
	end

	-- Código para doll
	if player:getItemCount(config.dollID) > 0 then
		player:sendAddonWindow(outfits, config.dollID)
		return true
	end

	-- Código para cheap doll
	if player:getItemCount(config.cheapDollID) > 0 then
		player:sendAddonWindow(cheapOutfits, config.cheapDollID)
		return true
	end

	-- Modal window design
	local window = ModalWindow {
		title = "EEEEEPA!", -- Title of the modal window
		message = "Tem que ter um dos addon dolls ue", -- The message to be displayed on the modal window
	}

	-- Add buttons to the window (Note: if you change the names of these you must change the functions in the modal window functionallity!)
	window:addButton("Back", buttonCallback)

	-- Set what button is pressed when the player presses enter or escape
	window:setDefaultEnterButton("Back")
	window:setDefaultEscapeButton("Back")

	-- Send the window to player
	window:sendToPlayer(self)
	return true
end

addonsDollModal:separator(" ")
addonsDollModal:register()
