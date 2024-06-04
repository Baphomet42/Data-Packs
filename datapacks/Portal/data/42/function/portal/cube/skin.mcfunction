function 42:portal/tag_id
execute if entity @s[tag=42.portal_turret] at @s run function 42:portal/cube/turret/skin
execute if entity @s[tag=42.portal_cube1] at @s run function 42:portal/cube/cube1_skin
tag @e remove 42.portal_id