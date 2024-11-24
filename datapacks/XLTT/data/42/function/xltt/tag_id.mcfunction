tag @e remove 42.tag.xltt.id
execute unless score @s 42.obj.xltt.id matches 1.. run return fail
scoreboard players operation temp_id 42.obj.xltt.temp = @s 42.obj.xltt.id
execute as @e if score @s 42.obj.xltt.id = temp_id 42.obj.xltt.temp run tag @s add 42.tag.xltt.id