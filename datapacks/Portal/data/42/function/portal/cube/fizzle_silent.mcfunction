function 42:portal/tag_id
scoreboard players set @a[tag=42.tag.portal.id] 42.obj.portal.id 0
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.col]
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit]
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.spacer]
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret] at @s run function 42:portal/cube/turret/fizzle
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis]
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.tp]
tag @e remove 42.tag.portal.id