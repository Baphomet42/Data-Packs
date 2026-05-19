execute unless score @s 42.obj.portal.var.v matches 0.. run return fail
scoreboard players remove @s 42.obj.portal.var.v 1
execute if score @s 42.obj.portal.var.v matches 0 run function 42:portal/portal/spawner/cycle