tag @e remove 42.tag.portal.new_spawn
kill @e[tag=42.tag.portal.notif,type=area_effect_cloud,distance=...1]
summon area_effect_cloud ~ ~ ~ {CustomName:'""',CustomNameVisible:1b,Duration:40,DurationOnUse:0,Particle:{type:block,block_state:{Name:air}},Radius:.5d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.tag.portal.new_spawn","42.tag.portal.notif"]}
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
tag @e remove 42.tag.portal.new_spawn