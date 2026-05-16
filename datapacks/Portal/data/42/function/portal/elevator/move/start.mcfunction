tag @s remove 42.tag.portal.elevator.wait_move
function 42:portal/elevator/move/snap_rider
tag @s add 42.tag.portal.elevator.is_moving
tag @s remove 42.tag.portal.elevator.at_start
tag @s remove 42.tag.portal.elevator.at_end

execute as @a[tag=42.tag.portal.temp.in_elevator] at @s run function 42:portal/portal/clear_player

scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.xrot2
scoreboard players set #42.var.portal.dummy 42.obj.portal.vars -1
execute if entity @s[tag=42.tag.portal.elevator.tp] as @e[tag=42.tag.portal.elevator.main] if score @s 42.obj.portal.id = #42.var.portal.dummy 42.obj.portal.temp run scoreboard players operation #42.var.portal.dummy 42.obj.portal.vars = @s 42.obj.portal.var.b
execute if entity @s[tag=42.tag.portal.elevator.tp] if score #42.var.portal.dummy 42.obj.portal.vars matches 0.. run scoreboard players operation @s 42.obj.portal.var.b = #42.var.portal.dummy 42.obj.portal.vars

scoreboard players set @a[tag=42.tag.portal.temp.in_elevator] 42.obj.portal.lvl 0
execute if score @s 42.obj.portal.var.b matches 1.. run scoreboard players operation @a[tag=42.tag.portal.temp.in_elevator] 42.obj.portal.lvl = @s 42.obj.portal.var.b

execute if score @s 42.obj.portal.var.a matches 1.. run tag @s add 42.tag.portal.elevator.unload_prev

execute if score @s 42.obj.portal.var.b matches 1.. run scoreboard players operation @s 42.obj.portal.lvl = @s 42.obj.portal.var.b
execute if score @s 42.obj.portal.var.b matches 1.. run function 42:portal/level/load
execute if score @s 42.obj.portal.var.b matches 1.. run scoreboard players reset @s 42.obj.portal.lvl