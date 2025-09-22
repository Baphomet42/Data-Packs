tag @s add 42.tag.posers.mannequin.temp_nokill
execute on origin if entity @s[tag=42.tag.posers.mannequin.temp_kill] run tag @e[type=area_effect_cloud,tag=42.tag.posers.mannequin.temp_nokill] remove 42.tag.posers.mannequin.temp_nokill
execute unless entity @s[tag=42.tag.posers.mannequin.temp_nokill] run kill @s
tag @s remove 42.tag.posers.mannequin.temp_nokill