scoreboard players add @s 42.obj.portal.var.x 1
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] at @s run tp @s ~ ~1 ~
execute if score @s 42.obj.portal.var.x matches -4..4 run function 42:portal/elevator/move/min/verify_up