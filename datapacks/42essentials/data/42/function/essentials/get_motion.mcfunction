execute store result score @s 42.essentials_x1 run data get entity @s Pos[0] 1000
execute store result score @s 42.essentials_y1 run data get entity @s Pos[1] 1000
execute store result score @s 42.essentials_z1 run data get entity @s Pos[2] 1000
execute at @s run tp @s ^ ^ ^.1
execute store result score @s 42.essentials_x2 run data get entity @s Pos[0] 1000
execute store result score @s 42.essentials_y2 run data get entity @s Pos[1] 1000
execute store result score @s 42.essentials_z2 run data get entity @s Pos[2] 1000
execute store result entity @s Motion[0] double .03 run scoreboard players operation @s 42.essentials_x2 -= @s 42.essentials_x1
execute store result entity @s Motion[1] double .03 run scoreboard players operation @s 42.essentials_y2 -= @s 42.essentials_y1
execute store result entity @s Motion[2] double .03 run scoreboard players operation @s 42.essentials_z2 -= @s 42.essentials_z1