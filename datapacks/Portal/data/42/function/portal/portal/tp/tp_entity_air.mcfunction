function 42:portal/generic/motion/start
execute store result score @s 42.obj.portal.var.x run data get entity @s Motion[0] 1000
execute store result score @s 42.obj.portal.var.y run data get entity @s Motion[1] 1000
execute store result score @s 42.obj.portal.var.z run data get entity @s Motion[2] 1000
scoreboard players set @s 42.obj.portal.cool 0
execute store result entity @s Motion[1] double .001 run scoreboard players get @s 42.obj.portal.var.y
execute at @s run function 42:portal/portal/tp/tp_motion