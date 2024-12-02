scoreboard players add @s 42.obj.portal.cool 1

execute if score @s 42.obj.portal.var.x matches 1.. run effect give @a[tag=42.tag.portal.temp] levitation 1 2 true
execute if score @s 42.obj.portal.var.x matches 1.. at @s run tp @s ~ ~.136 ~
execute if score @s 42.obj.portal.var.x matches 1.. at @s positioned ~-1.5 ~-1.1 ~-1.5 as @a[tag=42.tag.portal.temp,dx=2,dy=0,dz=2] at @s run tp @s ~ ~.125 ~
execute if score @s 42.obj.portal.var.x matches ..-1 at @s run tp @s ~ ~-.136 ~
execute at @s run function 42:portal/elevator/walls/set

execute store result score #42.var.portal.dummy 42.obj.portal.temp run data get entity @s Pos[1] 100
scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp -= @s 42.obj.portal.var.z
execute if score @s 42.obj.portal.var.x matches 1.. if score #42.var.portal.dummy 42.obj.portal.temp matches 50.. run tag @s add 42.tag.portal.temp1
execute if score @s 42.obj.portal.var.x matches ..-1 if score #42.var.portal.dummy 42.obj.portal.temp matches ..50 run tag @s add 42.tag.portal.temp1
execute if score @s 42.obj.portal.var.x matches 0 run tag @s add 42.tag.portal.temp1
playsound minecraft:entity.iron_golem.attack block @a ~ ~ ~ 1 .25

execute if entity @s[tag=42.tag.portal.temp1,tag=42.tag.portal.elevator.tp] run function 42:portal/elevator/tp/tp_all
execute if entity @s[tag=42.tag.portal.temp1] run function 42:portal/elevator/move/stop