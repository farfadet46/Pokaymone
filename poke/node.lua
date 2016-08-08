	-- aluminium
	
	minetest.register_node("poke:stone_with_aluminium", {
	description = "Iron Ore",
	tiles = {"default_stone.png^mineral_aluminium.png"},
	groups = {cracky = 2},
	drop = 'poke:aluminium_lump',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("poke:aluminiumblock", {
	description = "Aluminium Block",
	tiles = {"aluminium_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "poke:stone_with_aluminium",
		wherein        = "default:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -15,
		y_max          = 2,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "poke:stone_with_aluminium",
		wherein        = "default:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -63,
		y_max          = -16,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "poke:stone_with_aluminium",
		wherein        = "default:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "poke:stone_with_aluminium",
		wherein        = "default:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = -64,
	})
