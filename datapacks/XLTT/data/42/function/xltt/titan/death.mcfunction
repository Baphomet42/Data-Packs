tag @e remove 42.xltt_temp_spawn
summon area_effect_cloud ~ ~ ~ {Tags:["42.xltt_titan_cloud","42.xltt_temp_spawn"],Duration:100,DurationOnUse:0,Particle:{type:cloud},Radius:5,RadiusOnUse:0,RadiusPerTick:-.05,WaitTime:0}
scoreboard players set @e[tag=42.xltt_temp_spawn] 42.datapack 1
tag @e remove 42.xltt_temp_spawn
particle cloud ~ ~4 ~ 3 5 3 0 200 force
particle campfire_cosy_smoke ~ ~ ~ 3 4 3 .01 100 force
playsound block.fire.extinguish hostile @a ~ ~7.5 ~ 1.25
playsound entity.warden.death hostile @a ~ ~7.5 ~ 1
kill @e[tag=42.xltt_id,tag=42.xltt_titan_group]