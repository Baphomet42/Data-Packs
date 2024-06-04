function 42:portal/tag_id
kill @e[tag=42.portal_id,tag=42.portal_pellet_spawner_group]
execute if entity @s[tag=42.portal_pellet,tag=42.portal_pellet_super] at @s run function 42:portal/pellet/spawner/setup_super
tag @e remove 42.portal_id