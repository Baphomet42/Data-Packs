summon area_effect_cloud ~ ~ ~ {Duration:10,DurationOnUse:0,Particle:{type:"block",block_state:{Name:"minecraft:air"}},WaitTime:0,Radius:.5,RadiusOnUse:0,RadiusPerTick:0,Tags:["42.tag.summon","42.tag.xltt.titan.spawn_marker","42.tag.xltt.titan.spawn_effect"]}
summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.xltt.titan.appear"]}
tp @s[type=villager] ~ -512 ~
kill @s[type=villager]