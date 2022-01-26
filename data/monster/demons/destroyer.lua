local mType = Game.createMonsterType("Destroyer")
local monster = {}

monster.description = "a destroyer"
monster.experience = 2500
monster.outfit = {
	lookType = 236,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 287
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Pits of Inferno, Formorgar Mines, Alchemist Quarter, Oramond Dungeon."
	}

monster.health = 3700
monster.maxHealth = 3700
monster.race = "undead"
monster.corpse = 6320
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "COME HERE AND DIE!", yell = false},
	{text = "Destructiooooon!", yell = false},
	{text = "It's a good day to destroy!", yell = false}
}

monster.loot = {
	{name = "crystal necklace", chance = 578},
	{name = "gold coin", chance = 60000, maxCount = 100},
	{name = "gold coin", chance = 40000, maxCount = 100},
	{name = "gold coin", chance = 40000, maxCount = 100},
	{name = "gold coin", chance = 60000, maxCount = 41},
	{name = "small amethyst", chance = 7692, maxCount = 2},
	{name = "platinum coin", chance = 4166, maxCount = 3},
	{name = "mind stone", chance = 564},
	{name = "giant sword", chance = 1694},
	{name = "crowbar", chance = 14285},
	{name = "plate armor", chance = 4347},
	{name = "dark armor", chance = 10000},
	{name = "burst arrow", chance = 12500, maxCount = 12},
	{id = 2553, chance = 6250},
	{name = "steel boots", chance = 992},
	{name = "meat", chance = 50000, maxCount = 6},
	{name = "skull helmet", chance = 108},
	{name = "soul orb", chance = 6666},
	{id = 6300, chance = 144},
	{name = "demonic essence", chance = 20000},
	{name = "dreaded cleaver", chance = 833},
	{name = "chaos mace", chance = 869},
	{name = "great health potion", chance = 1136},
	{name = "metal spike", chance = 7142}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -500},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -200, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="speed", interval = 2000, chance = 15, speedChange = 420, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 25},
	{type = COMBAT_ENERGYDAMAGE, percent = 100},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 30},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = -15},
	{type = COMBAT_HOLYDAMAGE , percent = -3},
	{type = COMBAT_DEATHDAMAGE , percent = 20}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
