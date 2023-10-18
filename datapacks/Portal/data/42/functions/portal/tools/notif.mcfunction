tag @e remove 42.portal_new_spawn
kill @e[tag=42.portal_notif,type=area_effect_cloud,distance=...1]
summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":""}',CustomNameVisible:1b,Duration:40,DurationOnUse:0,Particle:"dust 0 0 0 0",Radius:.5d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.portal_new_spawn","42.portal_notif"]}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
tag @e remove 42.portal_new_spawn