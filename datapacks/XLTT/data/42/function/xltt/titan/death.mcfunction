summon area_effect_cloud ~ ~ ~ {Tags:["42.tag.summon","42.tag.xltt.titan.cloud"],Duration:100,DurationOnUse:0,custom_particle:{type:"minecraft:cloud"},Radius:5,RadiusOnUse:0,RadiusPerTick:-.05,WaitTime:0}
particle cloud ~ ~4 ~ 3 5 3 0 200 force
particle campfire_cosy_smoke ~ ~ ~ 3 4 3 .01 100 force
playsound block.fire.extinguish hostile @a ~ ~7.5 ~ 1.25
playsound entity.warden.death hostile @a ~ ~7.5 ~ 1
kill @e[tag=42.tag.xltt.id,tag=42.tag.xltt.titan.group]