function 42:portal/tag_id
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.gel.spawner.group]
execute if entity @s[tag=42.tag.portal.gel.surface] at @s run function 42:portal/gel/spawner/setup
tag @e remove 42.tag.portal.id