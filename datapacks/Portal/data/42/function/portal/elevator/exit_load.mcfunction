scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.var.b
tag @a remove 42.tag.portal.temp.elevator_exit_load
execute as @a[tag=42.tag.portal.temp.in_elevator] unless score @s 42.obj.portal.lvl = #42.var.portal.dummy 42.obj.portal.temp run tag @s add 42.tag.portal.temp.elevator_exit_load
scoreboard players operation @a[tag=42.tag.portal.temp.elevator_exit_load] 42.obj.portal.lvl = @s 42.obj.portal.var.b
execute as @a[tag=42.tag.portal.temp.elevator_exit_load] run function 42:portal/level/load
tag @a remove 42.tag.portal.temp.elevator_exit_load