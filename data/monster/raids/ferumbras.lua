local mType = Game.createMonsterType("Ferumbras")
local monster = {}

monster.description = "Ferumbras"
monster.experience = 120000
monster.outfit = {
	lookType = 229,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 150000
monster.maxHealth = 150000
monster.race = "venom"
monster.corpse = 6078
monster.speed = 780
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8
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

monster.summon = {
	maxSummons = 8,
	summons = {
		{name = "Demon", chance = 20, interval = 2000, count = 8}
	}
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "NO ONE WILL STOP ME THIS TIME!", yell = true},
	{text = "LAAAAAAAAAAAAAAAUND TAAAAAAAAAAAUND!", yell = true},
	{text = "THE POWER IS MINE!", yell = true},
	{text = "I returned from death and you dream about defeating me?", yell = false},
	{text = "Witness the first seconds of my eternal world domination!", yell = false},
	{text = "Even in my weakened state I will crush you all!", yell = false}
}

monster.loot = {
	{id = 5903, chance = 150}, -- ferumbras' hat
	{id = 22865, chance = 300}, -- mysterious scroll
	{id = 3031, chance = 98000, maxCount = 184}, -- gold coin
	{id = 9058, chance = 75000, maxCount = 2}, -- gold ingot
	{id = 3422, chance = 2000, unique = true}, -- great shield
	{id = 8075, chance = 2600}, -- spellbook of lost souls
	{id = 3360, chance = 8000}, -- golden armor
	{id = 3364, chance = 8000}, -- golden legs
	{id = 8074, chance = 8000}, -- spellbook of mind control
	{id = 8040, chance = 2000}, -- velvet mantle
	{id = 3420, chance = 8000}, -- demon shield
	{id = 8057, chance = 2000}, -- divine plate
	{id = 821, chance = 20000}, -- magma legs
	{id = 3442, chance = 2000}, -- tempest shield
	{id = 3010, chance = 18000}, -- emerald bangle
	{id = 823, chance = 18000}, -- glacier kilt
	{id = 822, chance = 18000}, -- lightning legs
	{id = 3439, chance = 2000}, -- phoenix shield
	{id = 8090, chance = 2000}, -- spellbook of dark mysteries
	{id = 812, chance = 18000}, -- terra legs
	{id = 8102, chance = 2000}, -- emerald sword
	{id = 7405, chance = 1500}, -- havoc blade
	{id = 7451, chance = 16000}, -- shadow sceptre
	{id = 3032, chance = 16000, maxCount = 100}, -- small emerald
	{id = 281, chance = 14000, maxCount = 5}, -- giant shimmering pearl (green)
	{id = 282, chance = 14000, maxCount = 5}, -- giant shimmering pearl (brown)
	{id = 3366, chance = 8000}, -- magic plate armor
	{id = 3414, chance = 8000}, -- mastermind shield
	{id = 7417, chance = 2000}, -- runed sword
	{id = 8076, chance = 2000}, -- spellscroll of prophecies
	{id = 7427, chance = 2000}, -- chaos mace
	{id = 8098, chance = 2000}, -- demonwing axe
	{id = 8041, chance = 2000}, -- greenwood coat
	{id = 3029, chance = 12000, maxCount = 98}, -- small sapphire
	{id = 3026, chance = 12000, maxCount = 88}, -- white pearl
	{id = 7407, chance = 2000}, -- haunted blade
	{id = 8096, chance = 2000}, -- hellforged axe
	{id = 7411, chance = 2000}, -- ornamented axe
	{id = 3033, chance = 10000, maxCount = 54}, -- small amethyst
	{id = 9057, chance = 10000, maxCount = 87}, -- small topaz
	{id = 7382, chance = 8000}, -- demonrage sword
	{id = 7422, chance = 8000}, -- jade hammer
	{id = 3035, chance = 8000, maxCount = 58}, -- platinum coin
	{id = 7423, chance = 2000}, -- skullcrusher
	{id = 5944, chance = 8000, maxCount = 9} -- soul orb
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = -1500, maxDamage = -2950},
	{name ="combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -500, maxDamage = -1100, range = 7, effect = CONST_ME_MAGIC_RED, target = false},
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -550, length = 8, spread = 3, effect = CONST_ME_HITBYPOISON, target = false},
	{name ="combat", interval = 2000, chance = 21, type = COMBAT_LIFEDRAIN, minDamage = -350, maxDamage = -600, radius = 6, effect = CONST_ME_POFF, target = false},
	-- poison
	{name ="condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -90, maxDamage = -150, range = 7, shootEffect = CONST_ANI_POISON, target = false},
	{name ="combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -600, maxDamage = -900, range = 4, radius = 3, target = false},
	-- energy damage
	{name ="condition", type = CONDITION_ENERGY, interval = 2000, chance = 18, minDamage = -1500, maxDamage = -2900, radius = 6, effect = CONST_ME_ENERGYHIT, target = false},
	-- fire
	{name ="condition", type = CONDITION_FIRE, interval = 3000, chance = 20, minDamage = -2000, maxDamage = -3800, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true}
}

monster.defenses = {
	defense = 180,
	armor = 150,
	{name ="combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 1500, maxDamage = 2000, effect = CONST_ME_MAGIC_GREEN, target = false},
	{name ="invisible", interval = 4000, chance = 20, effect = CONST_ME_MAGIC_BLUE}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 0},
	{type = COMBAT_EARTHDAMAGE, percent = 0},
	{type = COMBAT_FIREDAMAGE, percent = 90},
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
