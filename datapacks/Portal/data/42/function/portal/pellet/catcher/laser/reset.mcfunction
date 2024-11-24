tag @e remove 42.tag.portal.pellet.catcher.laser
summon marker ~ ~ ~ {Tags:["42.tag.portal.pellet.catcher.laser","42.tag.portal.bullet_pass"]}
scoreboard players set @e[type=!player,tag=42.tag.portal.pellet.catcher.laser] 42.obj.datapack 3
tp @e[tag=42.tag.portal.pellet.catcher.laser] ^ ^ ^1 ~ ~
scoreboard players set @e[tag=42.tag.portal.pellet.catcher.laser] 42.obj.portal.time 100
execute as @e[tag=42.tag.portal.pellet.catcher.laser] at @s align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/pellet/catcher/laser/move
tag @e remove 42.tag.portal.new_spawn
execute as @e[tag=42.tag.portal.pellet.catcher.laser,limit=1,sort=nearest] at @s[tag=!42.tag.portal.pellet.catcher.laser_valid] positioned ^ ^ ^.475 run summon area_effect_cloud ~ ~ ~ {Duration:20,DurationOnUse:0,Particle:{type:dust,color:[1.0,0.0,0.0],scale:1},Radius:.01d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.tag.portal.pellet.catcher.laser_effect","42.tag.portal.new_spawn"]}
summon area_effect_cloud ^ ^ ^-.1666 {Duration:20,DurationOnUse:0,Particle:{type:dust,color:[1.0,0.0,0.0],scale:1},Radius:.01d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.tag.portal.pellet.catcher.laser_effect","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"42portal"'}
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
tag @e remove 42.tag.portal.new_spawn
kill @e[tag=42.tag.portal.pellet.catcher.laser]