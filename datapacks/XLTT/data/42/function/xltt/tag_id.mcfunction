tag @e remove 42.xltt_id
scoreboard players operation @e[scores={42.xltt_id=1..}] 42.xltt_temp = @s 42.xltt_id
execute as @e[scores={42.xltt_id=1..}] run scoreboard players operation @s 42.xltt_temp -= @s 42.xltt_id
execute as @e[scores={42.xltt_id=1..,42.xltt_temp=0}] run tag @s add 42.xltt_id
tag @s remove 42.xltt_id