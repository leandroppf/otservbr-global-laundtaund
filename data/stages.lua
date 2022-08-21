-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 7,
		multiplier = 7
	}, {
		minlevel = 8,
		maxlevel = 100,
		multiplier = 20
	}, {
		minlevel = 101,
		maxlevel = 200,
		multiplier = 25
	}, {
		minlevel = 201,
		maxlevel = 300,
		multiplier = 30
	}, {
		minlevel = 301,
		maxlevel = 400,
		multiplier = 35
	}, {
		minlevel = 401,
		maxlevel = 500,
		multiplier = 40
	}, {
		minlevel = 501,
		maxlevel = 600,
		multiplier = 45
	}, {
		minlevel = 601,
		multiplier = 50
	}
}

skillsStages = {
  {
		minlevel = 0,
		multiplier = 15
	}
}

magicLevelStages = {
  {
		minlevel = 0,
		multiplier = 15
	}
}
