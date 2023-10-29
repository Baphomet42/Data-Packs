execute as @e[tag=42.portal_cube_tp] if score @s 42.portal_lvl = 42.portal_temp_lvl 42.portal_temp at @s run function 42:portal/cube/fizzle
execute as @e[tag=42.portal_pellet] if score @s 42.portal_lvl = 42.portal_temp_lvl 42.portal_temp at @s run function 42:portal/pellet/pellet/fizzle
execute as @e[tag=42.portal] if score @s 42.portal_lvl = 42.portal_temp_lvl 42.portal_temp at @s run function 42:portal/portal/fizzle
execute as @e[tag=42.portal_zone] if score @s 42.portal_lvl = 42.portal_temp_lvl 42.portal_temp run tag @s remove 42.portal_zone_cool
execute as @e[tag=42.portal_btn] if score @s 42.portal_lvl = 42.portal_temp_lvl 42.portal_temp at @s run function 42:portal/button/tick
execute as @e[tag=42.portal_pellet_emitter] if score @s 42.portal_lvl = 42.portal_temp_lvl 42.portal_temp at @s run function 42:portal/pellet/emitter/tick