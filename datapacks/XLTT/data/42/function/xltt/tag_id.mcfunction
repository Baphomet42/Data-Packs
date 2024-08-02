tag @e remove 42.xltt_id
execute unless score @s 42.xltt_id matches 1.. run return fail
scoreboard players operation temp_id 42.xltt_temp = @s 42.xltt_id
execute as @e if score @s 42.xltt_id = temp_id 42.xltt_temp run tag @s add 42.xltt_id