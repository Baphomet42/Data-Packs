function 42:portal/tag_id
tag @s add 42.tag.portal.pellet.spawner.show
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.pellet.spawner.group] run data modify entity @s view_range set value 10f
tag @e remove 42.tag.portal.id