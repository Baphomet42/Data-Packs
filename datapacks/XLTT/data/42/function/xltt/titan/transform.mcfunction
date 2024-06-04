tag @e remove 42.xltt_temp_spawn
summon area_effect_cloud ~ ~ ~ {Duration:10,DurationOnUse:0,Particle:{type:dust,color:[0.0,0.0,0.0],scale:0},WaitTime:0,Radius:.5,RadiusOnUse:0,RadiusPerTick:0,Tags:["42.xltt_spawn_titan","42.xltt_spawn_titan_effect","42.xltt_temp_spawn"]}
summon marker ~ ~ ~ {Tags:["42.titan_appear","42.xltt_temp_spawn"]}
scoreboard players set @e[tag=42.xltt_temp_spawn] 42.datapack 1
tag @e remove 42.xltt_temp_spawn
tp @s[type=villager] ~ -512 ~
kill @s[type=villager]