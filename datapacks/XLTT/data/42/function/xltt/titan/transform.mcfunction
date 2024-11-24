tag @e remove 42.tag.xltt.temp_spawn
summon area_effect_cloud ~ ~ ~ {Duration:10,DurationOnUse:0,Particle:{type:block,block_state:{Name:air}},WaitTime:0,Radius:.5,RadiusOnUse:0,RadiusPerTick:0,Tags:["42.tag.xltt.titan.spawn_marker","42.tag.xltt.titan.spawn_effect","42.tag.xltt.temp_spawn"]}
summon marker ~ ~ ~ {Tags:["42.tag.xltt.titan.appear","42.tag.xltt.temp_spawn"]}
scoreboard players set @e[tag=42.tag.xltt.temp_spawn] 42.obj.datapack 1
tag @e remove 42.tag.xltt.temp_spawn
tp @s[type=villager] ~ -512 ~
kill @s[type=villager]