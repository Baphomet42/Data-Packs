function 42:portal/tag_id
tag @s remove 42.portal_pellet_spawner_show
execute as @e[tag=42.portal_id,tag=42.portal_pellet_spawner_group] run data modify entity @s view_range set value 0f
tag @e remove 42.portal_id