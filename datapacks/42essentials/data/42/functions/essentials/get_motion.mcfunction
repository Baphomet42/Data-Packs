execute store result score @s 42.kcMotionX1 run data get entity @s Pos[0] 1000
execute store result score @s 42.kcMotionY1 run data get entity @s Pos[1] 1000
execute store result score @s 42.kcMotionZ1 run data get entity @s Pos[2] 1000
execute at @s run tp @s ^ ^ ^.1
execute store result score @s 42.kcMotionX2 run data get entity @s Pos[0] 1000
execute store result score @s 42.kcMotionY2 run data get entity @s Pos[1] 1000
execute store result score @s 42.kcMotionZ2 run data get entity @s Pos[2] 1000
execute store result entity @s Motion[0] double .03 run scoreboard players operation @s 42.kcMotionX2 -= @s 42.kcMotionX1
execute store result entity @s Motion[1] double .03 run scoreboard players operation @s 42.kcMotionY2 -= @s 42.kcMotionY1
execute store result entity @s Motion[2] double .03 run scoreboard players operation @s 42.kcMotionZ2 -= @s 42.kcMotionZ1