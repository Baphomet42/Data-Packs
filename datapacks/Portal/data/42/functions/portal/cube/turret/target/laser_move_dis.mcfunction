scoreboard players remove @s 42.portal_time 1
#
tag @e remove 42.portal_new_spawn
summon area_effect_cloud ^ ^ ^ {Duration:15,DurationOnUse:0,Particle:"dust 1 0 0 .2",Radius:.01d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.portal_new_spawn"]}
summon area_effect_cloud ^ ^ ^.125 {Duration:15,DurationOnUse:0,Particle:"dust 1 0 0 .2",Radius:.01d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.portal_new_spawn"]}
execute unless entity @s[tag=42.portal_turret_laser_nobullet] if entity @e[tag=42.portal_id,tag=42.portal_turret_fire,tag=!42.portal_turret_fire_noshoot] run summon area_effect_cloud ~ ~ ~ {Duration:5,DurationOnUse:0,Particle:"dust 1 1 .2 .1",Radius:.5d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.portal_new_spawn"]}
execute unless entity @s[tag=42.portal_turret_laser_nobullet] if entity @e[tag=42.portal_id,tag=42.portal_turret_fire,tag=!42.portal_turret_fire_noshoot] run summon area_effect_cloud ~ ~ ~ {Duration:5,DurationOnUse:0,Particle:"dust 1 1 1 .1",Radius:.5d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:10,Tags:["42.portal_new_spawn"]}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
tag @e remove 42.portal_new_spawn
#
tp ^ ^ ^.25
execute if score @s 42.portal_time matches 0.. at @s if block ~ ~ ~ #42:portal_bullet_pass run function 42:portal/cube/turret/target/laser_move_dis