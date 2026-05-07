function 42:portal/tag_id
execute as @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.id] at @s run function 42:portal/cube/fizzle
execute as @e[tag=42.tag.portal.gel,tag=42.tag.portal.id] at @s run function 42:portal/gel/fizzle
tag @e remove 42.tag.portal.id