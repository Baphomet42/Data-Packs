tag @e remove 42.tag.posers.id
execute unless score @s 42.obj.posers.id matches 1.. run return fail
scoreboard players operation #42.var.posers.temp_id 42.obj.posers.id = @s 42.obj.posers.id
tag @e[predicate=42:posers/match_id] add 42.tag.posers.id