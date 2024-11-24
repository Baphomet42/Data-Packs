function 42:portal/tag_id
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.spawner.group]
execute if entity @s[tag=42.tag.portal.turret] at @s run function 42:portal/cube/spawner/setup_turret
execute if entity @s[tag=42.tag.portal.radio] at @s run function 42:portal/cube/spawner/setup_radio
execute if entity @s[tag=42.tag.portal.cube.storage] at @s run function 42:portal/cube/spawner/setup_cube
execute if entity @s[tag=42.tag.portal.cube.companion] at @s run function 42:portal/cube/spawner/setup_cube
execute if entity @s[tag=42.tag.portal.cube.laser] at @s run function 42:portal/cube/spawner/setup_cube
tag @e remove 42.tag.portal.id