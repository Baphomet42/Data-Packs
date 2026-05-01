execute unless entity @s[tag=42.tag.portal.vent.on] run return fail

scoreboard players add @s 42.obj.portal.var.y 1
execute if score @s 42.obj.portal.var.y matches 3.. run scoreboard players set @s 42.obj.portal.var.y 0

execute if score @s 42.obj.portal.var.y matches 1 run function 42:portal/vent/drop