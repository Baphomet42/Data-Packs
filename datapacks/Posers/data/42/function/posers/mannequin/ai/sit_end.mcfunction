execute unless entity @s[type=mannequin,predicate=42:has_vehicle] run return fail

execute on vehicle run tag @s add 42.tag.posers.temp_tp
execute on vehicle if entity @s[type=interaction,tag=42.tag.posers.mannequin.sitting_interaction] run tag @s add 42.tag.posers.temp_kill
ride @s dismount
execute at @s positioned as @n[tag=42.tag.posers.temp_tp] run tp @s ~ ~ ~ ~ ~
tag @e remove 42.tag.posers.temp_tp
kill @e[type=interaction,tag=42.tag.posers.mannequin.sitting_interaction,tag=42.tag.posers.temp_kill]