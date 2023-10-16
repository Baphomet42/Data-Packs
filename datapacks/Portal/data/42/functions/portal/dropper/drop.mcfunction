function 42:portal/tag_id
tag @s add 42.portal_dropper_fizzle
execute as @e[tag=42.portal_cube_tp,tag=42.portal_id] at @s run function 42:portal/cube/fizzle
tag @s remove 42.portal_dropper_fizzle
tag @e remove 42.portal_id
#
tag @e remove 42.portal_dropper_drop
tag @s add 42.portal_dropper_drop
function 42:portal/cube/spawn
scoreboard players operation @e[tag=!42.portal_dropper,tag=42.portal_dropper_drop,distance=..10] 42.portal_id = @s 42.portal_id
scoreboard players operation @e[tag=!42.portal_dropper,tag=42.portal_dropper_drop,distance=..10] 42.portal_lvl = @s 42.portal_lvl
tag @e remove 42.portal_dropper_drop