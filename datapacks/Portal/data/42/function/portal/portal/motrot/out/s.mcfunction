scoreboard players set @s 42.obj.portal.var.x 0
scoreboard players set @s 42.obj.portal.var.y 0
scoreboard players operation @s 42.obj.portal.var.z = #42.var.portal.dummy 42.obj.portal.temp
execute store result entity @s Motion[0] double .001 run scoreboard players get @s 42.obj.portal.var.x
execute store result entity @s Motion[1] double .001 run scoreboard players get @s 42.obj.portal.var.y
execute store result entity @s Motion[2] double .001 run scoreboard players get @s 42.obj.portal.var.z