execute as @e[type=area_effect_cloud,tag=42.portal_spawn_cube] at @s run function 42:portal/cube/spawn
execute as @e[tag=42.portal_cube_tp] at @s if loaded ~ ~ ~ run function 42:portal/cube/tick
execute as @e[tag=42.portal_cube_dis,tag=42.portal_fizzle] at @s run function 42:portal/cube/fizzle_effect
execute as @e[type=area_effect_cloud,tag=42.portal_fizzle_tool] at @s run function 42:portal/tools/fizzler
execute as @e[type=area_effect_cloud,tag=42.portal_rotate_tool] at @s run function 42:portal/tools/rotate
execute as @e[type=area_effect_cloud,tag=42.portal_spawn_launch] at @s run function 42:portal/launch/spawn
execute as @e[tag=42.portal_launch] at @s if loaded ~ ~ ~ run function 42:portal/launch/tick
execute as @e[tag=42.portal_launch_tp] at @s if loaded ~ ~ ~ run function 42:portal/launch/motion
#
schedule function 42:portal/tick 1t replace