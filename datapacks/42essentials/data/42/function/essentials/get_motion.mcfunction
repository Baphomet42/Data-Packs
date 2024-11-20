execute store result score #x1 kittycannon run data get entity @s Pos[0] 1000
execute store result score #y1 kittycannon run data get entity @s Pos[1] 1000
execute store result score #z1 kittycannon run data get entity @s Pos[2] 1000
execute at @s run tp @s ^ ^ ^.1
execute store result score #x2 kittycannon run data get entity @s Pos[0] 1000
execute store result score #y2 kittycannon run data get entity @s Pos[1] 1000
execute store result score #z2 kittycannon run data get entity @s Pos[2] 1000
execute store result entity @s Motion[0] double .03 run scoreboard players operation #x2 kittycannon -= #x1 kittycannon
execute store result entity @s Motion[1] double .03 run scoreboard players operation #y2 kittycannon -= #y1 kittycannon
execute store result entity @s Motion[2] double .03 run scoreboard players operation #z2 kittycannon -= #z1 kittycannon