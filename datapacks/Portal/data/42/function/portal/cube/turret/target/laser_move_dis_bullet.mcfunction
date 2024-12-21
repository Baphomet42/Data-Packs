scoreboard players remove @s 42.obj.portal.time 1

summon area_effect_cloud ^ ^ ^ {Duration:15,DurationOnUse:0,Particle:{type:dust,color:[1.0,0.0,0.0],scale:.2},Radius:.01d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.tag.summon"]}
summon area_effect_cloud ^ ^ ^.25 {Duration:15,DurationOnUse:0,Particle:{type:dust,color:[1.0,0.0,0.0],scale:.2},Radius:.01d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.tag.summon"]}
summon area_effect_cloud ^ ^ ^.5 {Duration:15,DurationOnUse:0,Particle:{type:dust,color:[1.0,0.0,0.0],scale:.2},Radius:.01d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.tag.summon"]}
execute if entity @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.fire,tag=!42.tag.portal.turret.fire_noshoot] run summon area_effect_cloud ^ ^ ^ {Duration:5,DurationOnUse:0,Particle:{type:dust,color:[1.0,1.0,.2],scale:.1},Radius:.5d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.tag.summon"]}
execute if entity @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.fire,tag=!42.tag.portal.turret.fire_noshoot] run summon area_effect_cloud ^ ^ ^.325 {Duration:5,DurationOnUse:0,Particle:{type:dust,color:[1.0,1.0,1.0],scale:.1},Radius:.5d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:10,Tags:["42.tag.summon"]}

tp ^ ^ ^.75
function 42:portal/cube/turret/target/laser_valid
execute if score @s[tag=42.tag.portal.turret.laser_valid] 42.obj.portal.time matches 0.. at @s if block ~ ~ ~ #42:portal/portal_bullet_pass run function 42:portal/cube/turret/target/laser_move_dis_bullet