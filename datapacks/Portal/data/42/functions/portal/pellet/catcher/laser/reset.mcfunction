tag @e remove 42.portal_pellet_catcher_laser
summon marker ~ ~ ~ {Tags:[42.portal_pellet_catcher_laser]}
scoreboard players set @e[type=!player,tag=42.portal_pellet_catcher_laser] 42.datapack 3
tp @e[tag=42.portal_pellet_catcher_laser] ^ ^ ^1 ~ ~
scoreboard players set @e[tag=42.portal_pellet_catcher_laser] 42.portal_time 100
execute as @e[tag=42.portal_pellet_catcher_laser] at @s align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/pellet/catcher/laser/move
tag @e remove 42.portal_new_spawn
execute as @e[tag=42.portal_pellet_catcher_laser,limit=1,sort=nearest] at @s unless block ~ ~ ~ #42:portal_cube_pass positioned ^ ^ ^-.5 run summon area_effect_cloud ~ ~ ~ {Duration:20,DurationOnUse:0,Particle:"dust 1 0 0 1",Radius:.1d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.portal_pellet_catcher_laser_effect","42.portal_new_spawn"]}
summon area_effect_cloud ^ ^ ^-.1666 {Duration:20,DurationOnUse:0,Particle:"dust 1 0 0 1",Radius:.1d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.portal_pellet_catcher_laser_effect","42.portal_new_spawn"]}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
tag @e remove 42.portal_new_spawn
kill @e[tag=42.portal_pellet_catcher_laser]