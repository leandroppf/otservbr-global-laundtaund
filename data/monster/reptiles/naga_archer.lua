local mType = Game.createMonsterType("Naga Archer")
local monster = {}

monster.description = "a naga archer"
monster.experience = 5520
monster.outfit = {
	lookType = 1537,
	lookHead = 55,
	lookBody = 6,
	lookLegs = 0,
	lookFeet = 78,
	lookAddons = 3,
	lookMount = 0
}

monster.raceId = 2260
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


monster.health = 4460
monster.maxHealth = 4460
monster.race = "blood"
monster.corpse = 39225
monster.speed = 182
monster.manaCost = 0


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
	targetDistance = 4,
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
	{name = "hunting spear", chance = 4090},
	{name = "silver brooch", chance = 4120},
	{name = "crystal crossbow", chance = 3430},
	{name = "gemmed figurine", chance = 4170},
	{name = "naga archer scales", chance = 15640},
	{name = "blue crystal shard", chance = 4980},
	{name = "ornate crossbow", chance = 4300},
	{name = "elvish bow", chance = 4300},
	{name = "bullseye potion", chance = 9000},
	{name = "naga earring", chance = 13830},
	{name = "crossbow", chance = 8260},
	{name = "bow", chance = 8720},
	{name = "emerald bangle", chance = 4300},

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
    {name ="combat", interval = 2000, chance = 100, minDamage = -260, maxDamage = -447, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_PURPLEENERGY, target = true},
    {name ="nagadeath", interval = 6000, chance = 39, minDamage = -120, maxDamage = -280, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS, target = false},
    {name ="nagadeathattack", interval = 3000, chance = 68, target = true, minDamage = -220, maxDamage = -250},
		{name ="combat", interval = 6000, chance = 50, type = COMBAT_EARTHDAMAGE, minDamage = -171, maxDamage = -200, range = 7, shootEffect = CONST_ME_STONES, effect = CONST_ME_PURPLEENERGY, target = false}
}

monster.defenses = {
	defense = 110,
	armor = 63,
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = -10},
	{type = COMBAT_ENERGYDAMAGE, percent = -10},
	{type = COMBAT_EARTHDAMAGE, percent = -15},
	{type = COMBAT_FIREDAMAGE, percent = 20},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 20},
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
