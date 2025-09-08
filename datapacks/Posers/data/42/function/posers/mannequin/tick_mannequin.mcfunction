execute store result score #42.var.posers.temp 42.obj.posers.scale run attribute @s scale get 1000
execute unless score @s 42.obj.posers.scale = #42.var.posers.temp 42.obj.posers.scale run function 42:posers/mannequin/reset

tag @s add 42.tag.posers.temp_reset
execute on passengers on passengers if entity @s[type=interaction,tag=42.tag.posers.mannequin.interaction] on vehicle on vehicle run tag @s remove 42.tag.posers.temp_reset
execute if entity @s[tag=42.tag.posers.temp_reset] run function 42:posers/mannequin/reset
tag @s remove 42.tag.posers.temp_reset