-- aluminium --

minetest.register_craft({
	type = "cooking",
	output = "poke:aluminium_ingot",
	recipe = "poke:aluminium_lump",
})

minetest.register_craft({
	output = "poke:aluminiumblock",
	recipe = {
		{"poke:aluminium_ingot","poke:aluminium_ingot","poke:aluminium_ingot"},
		{"poke:aluminium_ingot","poke:aluminium_ingot","poke:aluminium_ingot"},
		{"poke:aluminium_ingot","poke:aluminium_ingot","poke:aluminium_ingot"}
	}
})

minetest.register_craft({
	output = 'poke:aluminium_ingot 9',
	recipe = {
		{'poke:aluminiumblock'},
	}
})

-- POKEBALLS ---
minetest.register_craft({
	output = "poke:pokeball",
	recipe = {
		{"poke:top_pokeball"},
		{"poke:aluminium_ingot"},
		{"poke:bottom_pokeball"}
	}
})

minetest.register_craft({
	output = "poke:top_pokeball",
	recipe = {
		{"group:wood","group:wood","group:wood"}
	}
})
minetest.register_craft({
	output = "poke:bottom_pokeball",
	recipe = {
		{"group:stone","group:stone","group:stone"}
	}
})
