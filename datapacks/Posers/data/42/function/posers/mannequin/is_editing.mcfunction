function 42:posers/tag_id
execute store result score #42.var.posers.temp 42.obj.posers.var if entity @e[type=armor_stand,tag=42.tag.posers.id]
tag @e remove 42.tag.posers.id
execute if score #42.var.posers.temp 42.obj.posers.var matches 1.. run return 1
return fail