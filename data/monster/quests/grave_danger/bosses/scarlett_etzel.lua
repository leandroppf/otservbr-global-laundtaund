local mType = Game.createMonsterType("Scarlett Etzel")
local monster = {}

monster.description = "a scarlett etzel"
monster.experience = 20000
monster.outfit = {
	lookType = 1201,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "blood"
monster.corpse = 31453
monster.speed = 175
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
	{name = "energy bar", chance = 100000},
	{name = "platinum coin", chance = 87000, maxCount = 5},
	{name = "green gem", chance = 85000},
	{name = "supreme health potion", chance = 53700, maxCount = 14},
	{name = "ultimate mana potion", chance = 48150, maxCount = 20},
	{id= 3039, chance = 42500}, -- red gem
	{name = "ultimate spirit potion", chance = 34000, maxCount = 6},
	{name = "yellow gem", chance = 29600, maxCount = 2},
	{name = "royal star", chance = 26600, maxCount = 100},
	{id = 281, chance = 24000}, -- giant shimmering pearl (green)
	{name = "berserk potion", chance = 20300, maxCount = 10},
	{name = "blue gem", chance = 18500, maxCount = 2},
	{name = "bullseye potion", chance = 18500, maxCount = 10},
	{name = "magma coat", chance = 16600},
	{name = "terra rod", chance = 1100},
	{name = "crystal coin", chance = 9200},
	{name = "violet gem", chance = 9000},
	{name = "terra legs", chance = 8500},
	{name = "terra hood", chance = 7400},
	{name = "terra mantle", chance = 7250},
	{name = "magma amulet", chance = 5500},
	{name = "silver token", chance = 6000, maxCount = 4},
	{name = "gold ingot", chance = 5000},
	{name = "terra amulet", chance = 4800},
	{name = "giant sapphire", chance = 4800},
	{name = "magma monocle", chance = 3700},
	{name = "cobra club", chance = 1000},
	{name = "cobra axe", chance = 1000},
	{name = "cobra crossbow", chance = 1000},
	{name = "cobra hood", chance = 1000},
	{name = "cobra rod", chance = 1000},
	{name = "cobra sword", chance = 1000},
	{name = "cobra wand", chance = 1000},
	{name = "cobra amulet", chance = 1000}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -600},
	{name ="sudden death rune", interval = 2000, chance = 16, minDamage = -400, maxDamage = -600, target = true},
	{name ="combat", interval = 2000, chance = 13, type = COMBAT_HOLYDAMAGE, minDamage = -450, maxDamage = -640, length = 7, spread = 3, effect = CONST_ME_HOLYAREA, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -480, maxDamage = -630, radius = 5, effect = CONST_ME_EXPLOSIONHIT, target = false}
}

monster.defenses = {
	defense = 88,
	armor = 88
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 0},
	{type = COMBAT_LIFEDRAIN, percent = 0},
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
