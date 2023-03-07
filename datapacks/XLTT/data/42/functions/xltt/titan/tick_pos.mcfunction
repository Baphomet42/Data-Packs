tag @e remove 42.titan_sel
scoreboard players operation 42.xltt 42.xltt_temp = @s 42.titan_id
execute as @e[distance=..20,tag=42.titanAI] if score @s 42.titan_id = 42.xltt 42.xltt_temp run tag @s add 42.titan_sel
execute as @e[distance=..20,tag=42.titanBody] if score @s 42.titan_id = 42.xltt 42.xltt_temp run tag @s add 42.titan_sel
tp @s[tag=42.titanBody] @e[tag=42.titan_sel,tag=42.titanAI,limit=1,sort=nearest]
execute as @s[tag=42.titanHit] at @e[tag=42.titan_sel,tag=42.titanBody,limit=1,sort=nearest] positioned ~ ~8 ~ rotated ~ 0 run tp @s ^ ^ ^-1