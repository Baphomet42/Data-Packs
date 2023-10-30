function 42:portal/tag_id
kill @e[tag=42.portal_id,tag=42.portal_cube_spawner_group]
execute if entity @s[tag=42.portal_turret] at @s run function 42:portal/cube/spawner/setup_turret
execute if entity @s[tag=42.portal_radio] at @s run function 42:portal/cube/spawner/setup_radio
execute if entity @s[tag=42.portal_cube1] at @s run function 42:portal/cube/spawner/setup_cube
execute if entity @s[tag=42.portal_cube2] at @s run function 42:portal/cube/spawner/setup_cube
execute if entity @s[tag=42.portal_laser_cube] at @s run function 42:portal/cube/spawner/setup_cube
tag @e remove 42.portal_id