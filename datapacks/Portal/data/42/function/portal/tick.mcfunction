tag @e remove 42.portal_sel
tag @e remove 42.portal_tick
scoreboard players set 42.portal_max_turret_lasers 42.portal_id 3
scoreboard players set 42.portal_music_tick 42.portal_id 1

execute as @e[tag=42.portal_motion_tp] at @s run function 42:portal/motion
execute as @e[tag=42.portal_damage] at @s run function 42:portal/damage

execute as @a[gamemode=!spectator] at @s run function 42:portal/player/tick
execute as @e[tag=42.portal.tags.has_tick,sort=random] at @s run function 42:portal/tick_entity

execute as @e[tag=42.portal_cube_hit,tag=!42.portal_ticked] run data remove entity @s interaction
execute as @e[tag=42.portal_cube_dis,tag=42.portal_fizzle] at @s run function 42:portal/cube/fizzle_effect
execute if entity @e[type=area_effect_cloud,tag=42.portal_egg,limit=1] run function 42:portal/egg

tag @e remove 42.portal_ticked
tag @e remove 42.portal_prox_tick

schedule function 42:portal/tick 1t replace