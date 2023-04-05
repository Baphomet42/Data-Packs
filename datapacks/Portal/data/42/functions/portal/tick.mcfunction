execute if entity @e[type=area_effect_cloud,tag=42.portal_egg] run function 42:portal/egg
execute as @e[tag=42.portal_cube_tp] at @s if loaded ~ ~ ~ run function 42:portal/cube/tick
execute as @e[tag=42.portal_cube_dis,tag=42.portal_fizzle] at @s run function 42:portal/cube/fizzle_effect
execute as @e[tag=42.portal_launch] at @s if loaded ~ ~ ~ run function 42:portal/launch/tick
execute as @e[tag=42.portal_motion_tp] at @s if loaded ~ ~ ~ run function 42:portal/motion
execute as @e[tag=42.portal_btn] at @s if loaded ~ ~ ~ run function 42:portal/button/tick
execute as @e[tag=42.portal_pedestal] at @s if loaded ~ ~ ~ run function 42:portal/button/tick_pedestal
execute as @e[tag=42.portal] at @s if loaded ~ ~ ~ run function 42:portal/portal/tick
execute as @e[type=marker,tag=42.portal_gun] at @s run function 42:portal/gun/find_target
execute if entity @e[tag=42.portal] as @a[nbt={OnGround:0b}] store result score @s 42.portal_y run data get entity @s Motion[1] 1000
#
execute as @a[scores={42.portal_gun_use=1..}] at @s run function 42:portal/gun/try_use
#
schedule function 42:portal/tick 1t replace