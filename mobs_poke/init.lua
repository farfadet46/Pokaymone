
local path = minetest.get_modpath("mobs_poke")

-- Intllib
local S
if minetest.get_modpath("intllib") then
	S = intllib.Getter()
else
	S = function(s) return s end
end
mobs.intllib = S

-- Animals

dofile(path .. "/pika.lua") -- Farfadet46
dofile(path .. "/bulbizare.lua") -- Farfadet46

print (S("[MOD] Mobs Redo 'pokemon' loaded"))
