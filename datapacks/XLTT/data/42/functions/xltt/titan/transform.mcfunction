summon area_effect_cloud ~ ~ ~ {Duration:10,DurationOnUse:0,Particle:"dust 0 0 0 0",WaitTime:0,Radius:.5,RadiusOnUse:0,RadiusPerTick:0,Tags:["42.xltt_spawn_titan","42.xltt_spawn_titan_effect"]}
summon marker ~ ~ ~ {Tags:["42.titan_appear"]}
tp @s[type=villager] ~ -512 ~
kill @s[type=villager]