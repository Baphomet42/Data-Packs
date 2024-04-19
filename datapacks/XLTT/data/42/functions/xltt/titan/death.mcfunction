summon area_effect_cloud ~ ~ ~ {Tags:["42.titanCloud"],Duration:100,DurationOnUse:0,Particle:{type:cloud},Radius:5,RadiusOnUse:0,RadiusPerTick:-.05,WaitTime:0}
particle cloud ~ ~4 ~ 3 5 3 0 200 force
particle campfire_cosy_smoke ~ ~ ~ 3 4 3 .01 100 force
playsound block.fire.extinguish hostile @a ~ ~7.5 ~ 1.25
playsound entity.warden.death hostile @a ~ ~7.5 ~ 1
kill @s