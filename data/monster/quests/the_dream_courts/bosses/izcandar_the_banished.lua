local mType = Game.createMonsterType("Izcandar the Banished")
local monster = {}

monster.description = "Izcandar the Banished"
monster.experience = 6900
monster.outfit = {
	lookType = 1137,
	lookHead = 19,
	lookBody = 95,
	lookLegs = 76,
	lookFeet = 38,
	lookAddons = 2,
	lookMount = 0
}

monster.health = 76000
monster.maxHealth = 76000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 250
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
	rewardBoss = true,
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
}

monster.loot = {
	{name = "berserk potion", chance = 100000, maxCount = 10},
	{name = "crystal coin", chance = 100000},
	{name = "energy bar", chance = 100000},
	{name = "giant sapphire", chance = 100000},
	{name = "gold token", chance = 8000, maxCount = 3},
	{name = "silver token", chance = 8000, maxCount = 3},
	{name = "royal star", chance = 100000, maxCount = 100},
	{name = "green gem", chance = 100000, maxCount = 2},
	{name = "huge chunk of crude iron", chance = 25100},
	{name = "mysterious remains", chance = 25000},
	{name = "piggy bank", chance = 12800},
	{name = "platinum coin", chance = 12000, maxCount = 10},
	{name = "supreme health potion", chance = 12000, maxCount = 10},
	{name = "ultimate mana potion", chance = 12000, maxCount = 20},
	{id = 3341, chance = 6000}, -- Arcane Staff
	{id = 23542, chance = 6000}, -- collar of blue plasma
	{id = 23543, chance = 6000}, -- collar of green plasma
	{id = 23544, chance = 6000}, -- collar of red plasma
	{id = 23529, chance = 6000}, -- ring of blue plasma
	{id = 23531, chance = 6000}, -- ring of green plasma
	{id = 23533, chance = 6000}, -- ring of red plasma
	{id = 5809, chance = 4000}, -- soul stone
	{id = 29421, chance = 2000}, -- summerblade
	{id = 29422, chance = 2000} -- winterblade
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1500},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -570, maxDamage = -810, length = 3, spread = 0, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -500, maxDamage = -750, radius = 5, effect = CONST_ME_ICEAREA, target = true},
	{name ="combat", interval = 3000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -800, radius = 4, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -550, maxDamage = -800, radius = 3, effect = CONST_ME_FIREAREA, target = false},
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -450, maxDamage = -850, radius = 5, effect = CONST_ME_EXPLOSIONAREA, target = true}
}

monster.defenses = {
	defense =76,
	armor = 76,
	{name ="combat", interval = 1000, chance = 15, type = COMBAT_HEALING, minDamage = 600, maxDamage = 1200, effect = CONST_ME_MAGIC_BLUE, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 100},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 0},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 0}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType.onThink = function(monster, interval)
end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature)
end

mType.onMove = function(monster, creature, fromPosition, toPosition)
end

mType.onSay = function(monster, creature, type, message)
end

mType:register(monster)
