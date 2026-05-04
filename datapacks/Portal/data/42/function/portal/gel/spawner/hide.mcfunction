function 42:portal/tag_id
tag @s remove 42.tag.portal.gel.spawner.show
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.gel.spawner.group] run data modify entity @s view_range set value 0f
tag @e remove 42.tag.portal.id