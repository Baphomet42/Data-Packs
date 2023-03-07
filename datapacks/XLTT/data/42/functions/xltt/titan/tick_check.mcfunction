tag @e remove 42.titan_sel
scoreboard players operation 42.xltt 42.xltt_temp = @s 42.titan_id
execute as @e[distance=..20,tag=42.titan] if score @s 42.titan_id = 42.xltt 42.xltt_temp run tag @s add 42.titan_sel
execute unless entity @e[tag=42.titanAI,tag=42.titan_sel] run tag @s add 42.titan_kill
execute unless entity @e[tag=42.titanBody,tag=42.titan_sel] run tag @s add 42.titan_kill
execute unless entity @e[tag=42.titanHit,tag=42.titan_sel] run tag @s add 42.titan_kill
kill @s[tag=42.titanAI,tag=42.titan_kill]
execute as @s[tag=42.titanBody,tag=42.titan_kill] run function 42:xltt/titan/death
kill @s[tag=42.titanHit,tag=42.titan_kill]