function 42:portal/tag_id
execute if entity @s[tag=42.tag.portal.turret] at @s run function 42:portal/cube/turret/skin
execute if entity @s[tag=42.tag.portal.cube.storage] at @s run function 42:portal/cube/cube1_skin
tag @e remove 42.tag.portal.id