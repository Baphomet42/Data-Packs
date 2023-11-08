tag @e remove 42.portal_sel
execute as @a[gamemode=!spectator] at @s run function 42:portal/player/tick
#
execute if entity @e[type=area_effect_cloud,tag=42.portal_egg] run function 42:portal/egg
execute as @e[tag=42.portal_motion_tp] at @s if loaded ~ ~ ~ run function 42:portal/motion
execute as @e[tag=42.portal_damage] at @s run function 42:portal/damage
execute as @e[tag=42.portal_cube_dis,tag=42.portal_fizzle] at @s run function 42:portal/cube/fizzle_effect
execute as @e[type=marker,tag=42.portal_gun] at @s run function 42:portal/gun/find_target
function 42:portal/level/mark_tick
execute as @e[tag=42.portal] at @s run function 42:portal/portal/tick
#
tag @e remove 42.portal_prox_tick
execute as @a[gamemode=!spectator] at @s run tag @e[tag=42.portal_elevator_start,distance=..15] add 42.portal_prox_tick
execute as @a[gamemode=!spectator] at @s run tag @e[tag=42.portal_zone,distance=..15] add 42.portal_prox_tick
execute as @e[tag=42.portal_elevator_start,tag=!42.portal_elevator_on,tag=42.portal_prox_tick] at @s run function 42:portal/elevator/off_tick
execute as @e[tag=42.portal_elevator,tag=42.portal_elevator_on] at @s run function 42:portal/elevator/on_tick
execute as @e[tag=42.portal_zone,tag=!42.portal_zone_cool,tag=42.portal_prox_tick] at @s if entity @a[gamemode=!spectator,distance=..10] run function 42:portal/zone/tick
tag @e remove 42.portal_prox_tick
#
schedule function 42:portal/tick 1t replace