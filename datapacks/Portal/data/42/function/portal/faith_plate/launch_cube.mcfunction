function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.tp,limit=1] run function 42:portal/faith_plate/launch_entity
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.tp,tag=42.tag.portal.turret,limit=1] at @s run function 42:portal/cube/turret/fall
tag @e remove 42.tag.portal.id