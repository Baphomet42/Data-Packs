function 42:portal/tag_id
tag @s add 42.portal_cube_spawner_show
execute as @e[tag=42.portal_id,tag=42.portal_cube_spawner_group] run data modify entity @s view_range set value 10f
tag @e remove 42.portal_id