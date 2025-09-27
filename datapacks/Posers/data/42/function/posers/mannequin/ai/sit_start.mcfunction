execute unless entity @s[type=mannequin,predicate=!42:has_vehicle] run return fail

tag @s remove 42.tag.posers.new_spawn_sitting
execute at @s run summon interaction ~ ~ ~ {Tags:["42.tag.posers.new_spawn_sitting","42.tag.posers.mannequin.sitting_interaction","42.tag.posers.mannequin.vehicle"],data:{42data:{datapack:{},posers:{sitting_interaction:{}}}},width:0,height:0}
ride @s mount @n[type=interaction,tag=42.tag.posers.new_spawn_sitting]
tag @s remove 42.tag.posers.new_spawn_sitting