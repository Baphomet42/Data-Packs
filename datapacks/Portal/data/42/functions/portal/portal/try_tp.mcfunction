execute as @s[type=player] at @s run function 42:portal/portal/tp_player_branch
execute as @s[tag=42.portal_cube_hit] at @s run function 42:portal/portal/tp_cube
execute as @s[type=!#42:portal_exempt,tag=!42.portal_motion_tp] if entity @e[tag=42.portal_tp1,scores={42.portal_y=0..}] at @s run function 42:portal/portal/tp_player
execute as @s[type=!#42:portal_exempt,tag=!42.portal_motion_tp] if entity @e[tag=42.portal_tp1,scores={42.portal_y=..-1}] at @s run function 42:portal/portal/tp_entity_air
execute as @s[tag=42.portal_motion_tp] at @s run function 42:portal/portal/tp_motion
execute as @e[tag=42.portal_tp1] at @s run playsound minecraft:entity.allay.item_given block @a ~ ~ ~ 1 .5
execute as @e[tag=42.portal_tp2] at @s run playsound minecraft:entity.allay.item_given block @a ~ ~ ~ 1 .5
tag @s remove 42.portal_tp