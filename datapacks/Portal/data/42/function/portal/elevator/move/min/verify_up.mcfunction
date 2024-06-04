execute as @e[tag=42.portal_id,tag=42.portal_elevator_end] at @s run tp @s ~ ~1 ~
scoreboard players add @s 42.portal_x 1
execute if score @s 42.portal_x matches -4..4 run function 42:portal/elevator/move/min/verify_up