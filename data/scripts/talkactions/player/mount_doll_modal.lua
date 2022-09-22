config = {
	expensiveDollID = 27591, -- Santa fox
	dollID = 12736, -- Babel swimmer
	cheapDollID = 123, -- Toy mouse
}

local expensiveMounts = {

	-- Config
	-- Main Window Messages (The first window the player sees)
	mainTitle = "Escolhe uma montaria seu rico!",
	mainMsg = "Vai liberar o bichin na hora.",

	-- Already Owned Window (The window that appears when the player already owns the addon)
	ownedTitle = "EEEEEPA!",
	ownedMsg = "Você ja tem essa.",

	-- No Doll in Backpack (The window that appears when the player doesnt have the doll in their backpack)
	dollTitle = "EEEEEPA!",
	dollMsg = "Tem que ter um dos mount dolls espertinho",
	-- End Config

	-- Mounts Table
	[1] = {name = "Antelope", ID = 163},
	[2] = {name = "Azudocus", ID = 44},
	[3] = {name = "Blazebringer", ID = 9},
	[4] = {name = "Blue Rolling Barrel", ID = 156},
	[5] = {name = "Red Rolling Barrel", ID = 157},
	[6] = {name = "Green Rolling Barrel", ID = 158},
	[7] = {name = "Cold Percht Sleigh Final", ID = 150},
	[8] = {name = "Bright Percht Sleigh Final", ID = 151},
	[9] = {name = "Dark Percht Sleigh Final", ID = 152},
	[10] = {name = "Carpacosaurus", ID = 45},
	[11] = {name = "Cerberus Champion", ID = 146},
	[12] = {name = "Fleeting Knowledge", ID = 126},
	[13] = {name = "Glooth Glider", ID = 71},
	[14] = {name = "Ironblight", ID = 29},
	[15] = {name = "Jousting Eagle", ID = 145},
	[16] = {name = "Krakoloss", ID = 175},
	[17] = {name = "Magma Crawler", ID = 30},
	[18] = {name = "Phant", ID = 182},
	[19] = {name = "Phantasmal Jade", ID = 167},
	[20] = {name = "Rift Runner", ID = 87},
	[21] = {name = "Noxious Ripptor", ID = 202},
	[22] = {name = "Shellodon", ID = 183},
	[23] = {name = "Shock Head", ID = 42},
	[24] = {name = "Singeing Steed", ID = 184},
	[25] = {name = "Stone Rhino", ID = 106},
	[26] = {name = "Vortexion", ID = 99},
}

local mounts = {

	-- Config
	-- Main Window Messages (The first window the player sees)
	mainTitle = "Escolhe uma montaria!",
	mainMsg = "Vai liberar o bichin na hora.",

	-- Already Owned Window (The window that appears when the player already owns the addon)
	ownedTitle = "EEEEEPA!",
	ownedMsg = "Você ja tem essa.",

	-- No Doll in Backpack (The window that appears when the player doesnt have the doll in their backpack)
	dollTitle = "EEEEEPA!",
	dollMsg = "Tem que ter um dos mount dolls espertinho",
	-- End Config

	-- Mounts Table
	[1] = {name = "Cold Percht Sleigh Variant", ID = 147},
	[2] = {name = "Bright Percht Sleigh Variant", ID = 148},
	[3] = {name = "Dark Percht Sleigh Variant", ID = 149},
	[4] = {name = "Dragonling", ID = 31},
	[5] = {name = "Draptor", ID = 6},
	[6] = {name = "Giant Beaver", ID = 201},
	[7] = {name = "Gloothomotive", ID = 194},
	[8] = {name = "Gnarlhound", ID = 32},
	[9] = {name = "Gryphon", ID = 144},
	[10] = {name = "Haze", ID = 162},
	[11] = {name = "Lady Bug", ID = 27},
	[12] = {name = "Manta Ray", ID = 28},
	[13] = {name = "Midnight Panther", ID = 5},
	[14] = {name = "Mole", ID = 119},
	[15] = {name = "Neon Sparkid", ID = 98},
	[16] = {name = "Scorpion King", ID = 21},
	[17] = {name = "The Hellgrip", ID = 39},
	[18] = {name = "Tiger Slug", ID = 14},
	[19] = {name = "Tin Lizzard", ID = 8},
	[20] = {name = "Titanica", ID = 7},
	[21] = {name = "Undead Cavebear", ID = 12},
	[22] = {name = "Uniwheel", ID = 15},
	[23] = {name = "Ursagrodon", ID = 38},
	[24] = {name = "White Lion", ID = 174},
}

local cheapMounts = {

	-- Config
	-- Main Window Messages (The first window the player sees)
	mainTitle = "Escolhe uma montaria!",
	mainMsg = "Vai liberar o bichin na hora.",

	-- Already Owned Window (The window that appears when the player already owns the addon)
	ownedTitle = "EEEEEPA!",
	ownedMsg = "Você ja tem essa.",

	-- No Doll in Backpack (The window that appears when the player doesnt have the doll in their backpack)
	dollTitle = "EEEEEPA!",
	dollMsg = "Tem que ter um dos mount dolls espertinho",
	-- End Config

	-- Mounts Table
	[1] = {name = "Black Sheep", ID = 4},
	[2] = {name = "Cold Percht Sleigh", ID = 132},
	[3] = {name = "Bright Percht Sleigh", ID = 133},
	[4] = {name = "Dark Percht Sleigh", ID = 134},
	[5] = {name = "Crystal Wolf", ID = 16},
	[6] = {name = "Donkey", ID = 13},
	[7] = {name = "Dromedary", ID = 20},
	[8] = {name = "Lacewing Moth", ID = 130},
	[9] = {name = "Hibernal Moth", ID = 131},
	[10] = {name = "Kingly Deer", ID = 18},
	[11] = {name = "Noble Lion", ID = 40},
	[12] = {name = "Racing Bird", ID = 2},
	[13] = {name = "Rapid Boar", ID = 10},
	[14] = {name = "Sparkion", ID = 94},
	[15] = {name = "Stampor", ID = 11},
	[16] = {name = "Tamed Panda", ID = 19},
	[17] = {name = "Walker", ID = 43},
	[18] = {name = "War Bear", ID = 3},
	[19] = {name = "War Horse", ID = 17},
	[20] = {name = "Water Buffalo", ID = 35},
	[21] = {name = "Widow Queen", ID = 1},
}

local mountsDollModal = TalkAction("!mountdoll")

function mountsDollModal.onSay(player, words, param)
	-- Codigo para expensive doll
	if player:getItemCount(config.expensiveDollID) > 0 then
		player:sendMountWindow(expensiveMounts, config.expensiveDollID)
	end
	-- Codigo para doll
	if player:getItemCount(config.dollID) > 0 then
		player:sendMountWindow(mounts, config.dollID)
	end
	-- Codigo para cheap doll
	if player:getItemCount(config.cheapDollID) > 0 then
		player:sendMountWindow(cheapMounts, config.cheapDollID)
	end

	-- Modal window design
	local window = ModalWindow {
		title = "EEEEEPA!", -- Title of the modal window
		message = "Tem que ter um dos mount dolls espertinho", -- The message to be displayed on the modal window
	}

	-- Add buttons to the window (Note: if you change the names of these you must change the functions in the modal window functionallity!)
	window:addButton("Back", buttonCallback)

	-- Set what button is pressed when the player presses enter or escape
	window:setDefaultEnterButton("Back")
	window:setDefaultEscapeButton("Back")

	-- Send the window to player
	window:sendToPlayer(player)
	return true
end

mountsDollModal:separator(" ")
mountsDollModal:register()
