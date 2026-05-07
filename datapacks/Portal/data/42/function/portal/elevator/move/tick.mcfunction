scoreboard players operation #42.var.portal.dummy 42.obj.portal.var.x = @s 42.obj.portal.var.x
scoreboard players operation #42.var.portal.dummy 42.obj.portal.var.z = @s 42.obj.portal.var.z
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.car,limit=1] at @s run function 42:portal/elevator/move/tick_car