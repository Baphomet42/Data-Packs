execute as @a[nbt={OnGround:0b}] store result score @s 42.portal_y run data get entity @s Motion[1] 1000
execute as @a[scores={42.portal_gun_use=1..}] at @s run function 42:portal/gun/try_use
#
execute if entity @e[type=area_effect_cloud,tag=42.portal_egg] run function 42:portal/egg
execute as @e[tag=42.portal_motion_tp] at @s if loaded ~ ~ ~ run function 42:portal/motion
execute as @e[tag=42.portal_damage] at @s run function 42:portal/damage
execute as @e[tag=42.portal_cube_dis,tag=42.portal_fizzle] at @s run function 42:portal/cube/fizzle_effect
execute as @e[type=marker,tag=42.portal_gun] at @s run function 42:portal/gun/find_target
function 42:portal/level/mark_tick
execute as @e[tag=42.portal_elevator_start,tag=!42.portal_elevator_on] at @s run function 42:portal/elevator/off_tick
execute as @e[tag=42.portal_elevator,tag=42.portal_elevator_on] at @s run function 42:portal/elevator/on_tick
#
tag @e remove 42.portal_sel
execute as @a if score @s 42.portal_sel matches 1.. at @s run function 42:portal/tools/sel_tick_player
#
schedule function 42:portal/tick 1t replace