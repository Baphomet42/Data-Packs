function 42:portal/tag_id
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.pellet.spawner.group]
execute if entity @s[tag=42.tag.portal.pellet,tag=42.tag.portal.pellet.super] at @s run function 42:portal/pellet/spawner/setup_super
tag @e remove 42.tag.portal.id