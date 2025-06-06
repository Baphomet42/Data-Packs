tag @e remove 42.tag.portal.pellet.catcher.laser
summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.pellet.catcher.laser","42.tag.portal.bullet_pass"]}
tp @e[tag=42.tag.portal.pellet.catcher.laser] ^ ^ ^1 ~ ~
scoreboard players set @e[tag=42.tag.portal.pellet.catcher.laser] 42.obj.portal.time 100
execute as @e[tag=42.tag.portal.pellet.catcher.laser] at @s align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/pellet/catcher/laser/move
execute as @e[tag=42.tag.portal.pellet.catcher.laser,limit=1,sort=nearest] at @s[tag=!42.tag.portal.pellet.catcher.laser_valid] positioned ^ ^ ^.475 run summon area_effect_cloud ~ ~ ~ {Duration:20,DurationOnUse:0,custom_particle:{type:"minecraft:dust",color:[1.0,0.0,0.0],scale:1},Radius:.01d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.tag.summon","42.tag.portal.pellet.catcher.laser_effect"]}
summon area_effect_cloud ^ ^ ^-.1666 {Duration:20,DurationOnUse:0,custom_particle:{type:"minecraft:dust",color:[1.0,0.0,0.0],scale:1},Radius:.01d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.tag.summon","42.tag.portal.pellet.catcher.laser_effect"],CustomNameVisible:false,CustomName:"42portal"}
kill @e[tag=42.tag.portal.pellet.catcher.laser]