local mType = Game.createMonsterType("Naga Warrior")
local monster = {}

monster.description = "a naga warrior"
monster.experience = 6330
monster.outfit = {
	lookType = 1539,
	lookHead = 85,
	lookBody = 1,
	lookLegs = 85,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 2261
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_AMPHIBIC,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "Temple of the Moon Goddess."
}


monster.health = 5290
monster.maxHealth = 5290
monster.race = "blood"
monster.corpse = 39225
monster.speed = 182
monster.manaCost = 0
monster.maxSummons = 0


monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "The Moon Goddess is ashamed of you!", yell = false},
}

monster.loot = {
	{name = "platinum coin", chance = 100000, maxCount = 13},
	{name = "naga armring", chance = 7730},
	{name = "spiky club", chance = 3090},
	{name = "plate armor", chance = 4430},
	{name = "katana", chance = 4430},
	{name = "naga archer scales", chance = 15640},
	{name = "violet crystal shard", chance = 1980},
	{name = "naga warrior scales", chance = 4430},
	{name = "knight armor", chance = 4430},
	{name = "serpent sword", chance = 5090},
	{name = "naga earring", chance = 13830},
	{name = "relic sword", chance = 3430},

	{name = "naga axe", chance = 10},
	{name = "naga sword", chance = 10},
	{name = "naga club", chance = 10},
	{name = "midnight sarong", chance = 10},
	{name = "dawnfire pantaloons", chance = 10},
	{name = "frostflower boots", chance = 10},
	{name = "feverbloom boots", chance = 10},
	{name = "naga crossbow", chance = 10},
	{name = "naga wand", chance = 10},
	{name = "naga rod", chance = 10},
	{name = "midnight tunic", chance = 10},
	{name = "dawnfire sherwani", chance = 10},
	{id = 39233, chance = 10}, -- enchanted turtle amulet
	{name = "naga quiver", chance = 10}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 300, maxDamage = -440},
	{name ="combat", interval = 3000, chance = 47, type = COMBAT_PHYSICALDAMAGE, minDamage = -380, maxDamage = -500, effect = CONST_ME_YELLOWSMOKE, target = true},
	{name ="combat", interval = 4000, chance = 31, type = COMBAT_LIFEDRAIN, minDamage = -480, maxDamage = -520, radius = 4, effect = CONST_ME_DRAWBLOOD, target = false},
	{name ="combat", interval = 2000, chance = 41, type = COMBAT_LIFEDRAIN, minDamage = -250, maxDamage = -350, effect = CONST_ME_DRAWBLOOD, target = true}
}

monster.defenses = {
	defense = 110,
	armor = 120,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 20},
	{type = COMBAT_ENERGYDAMAGE, percent = -5},
	{type = COMBAT_EARTHDAMAGE, percent = -5},
	{type = COMBAT_FIREDAMAGE, percent = 10},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 10},
	{type = COMBAT_HOLYDAMAGE , percent = -20},
	{type = COMBAT_DEATHDAMAGE , percent = 10}
}

monster.immunities = {
	{type = "paralyze", condition = false},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)
