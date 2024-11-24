scoreboard players set @s 42.obj.portal.var.x 0
scoreboard players set @s 42.obj.portal.var.y 0
scoreboard players operation @s 42.obj.portal.var.z = #42.var.portal.dummy 42.obj.portal.temp
scoreboard players operation @s 42.obj.portal.var.z *= #42.var.gen.const.neg_1 42.obj.portal.vars
execute store result entity @s Motion[0] double .001 run scoreboard players get @s 42.obj.portal.var.x
execute store result entity @s Motion[1] double .001 run scoreboard players get @s 42.obj.portal.var.y
execute store result entity @s Motion[2] double .001 run scoreboard players get @s 42.obj.portal.var.z