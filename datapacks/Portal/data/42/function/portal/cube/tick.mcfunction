function 42:portal/tag_id

execute if entity @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held,limit=1] run function 42:portal/cube/tick_hold
execute positioned ~ ~-.005 ~ unless entity @e[distance=...0001,tag=42.portal_cube_display,tag=42.portal_id,limit=1] at @s run function 42:portal/cube/tick_move
tag @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1] add 42.portal_ticked
execute if entity @s[tag=42.portal.cube.level_freeze] run function 42:portal/cube/debug/level_unfreeze
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1] if function 42:portal/cube/interact_test at @s run function 42:portal/cube/interact

#rare tick
execute if score @s 42.portal_time matches 200 run function 42:portal/cube/tick_rare
scoreboard players add @s 42.portal_time 1
execute if score @s 42.portal_time matches 201.. run scoreboard players set @s 42.portal_time 0
tag @e remove 42.portal_id

#special
execute if entity @s[tag=42.portal_turret] at @s run function 42:portal/cube/turret/tick
execute if entity @s[tag=42.portal_laser_cube] at @s run function 42:portal/cube/laser/tick