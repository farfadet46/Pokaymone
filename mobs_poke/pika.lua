
local S = mobs.intllib

mobs:register_mob("mobs_poke:pika", {
	type = "animal",
	passive = true,
	hp_min = 5,
	hp_max = 10,
	armor = 200,
	collisionbox = {-0.3, -0.3, -0.3, 0.3, 0.3, 0.3},
	visual = "mesh",
	mesh = "pika.x",
	textures = {
		{"mobs_pika.png"},
	},
	makes_footstep_sound = false,
	sounds = {
		random = "mobs_pika",
	},
	walk_velocity = 0.6,
	run_velocity = 2,
	runaway = true,
	jump = false,
	drops = {
	--	{name = "farming:string", chance = 1, min = 1, max = 1},
	},
	water_damage = 5,
	lava_damage = 1,
	fear_height = 5,
	animation = {
		speed_normal = 42,
		stand_start = 30,
		stand_end = 50,
		walk_start = 0,
		walk_end = 20,
		run_start = 30,
		run_end = 50,
	},
	follow = {"mobs_animal:rat"},
	view_range = 8,
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 4, true, true) then
			return
		end

		mobs:capture_mob(self, clicker, 50, 50, 90, false, nil)
	end
})

mobs:register_spawn("mobs_poke:pika",
	{"default:dirt_with_grass", "ethereal:grove_dirt"}, 20, 12, 22000, 1, 31000, true)

mobs:register_egg("mobs_poke:pika", S("Pika"), "mobs_pika_inv.png", 0)

-- compatibility
mobs:alias_mob("mobs:pika", "mobs_poke:pika")
