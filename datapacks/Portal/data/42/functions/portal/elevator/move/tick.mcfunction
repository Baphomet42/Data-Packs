scoreboard players add @s 42.portal_u 1
execute store result score 42.portal 42.portal_temp run data get entity @s Motion[1] 100
execute if score 42.portal 42.portal_temp matches -10..10 if score @s 42.portal_u matches 60.. run function 42:portal/elevator/move/blocked
#
execute if score @s 42.portal_x matches 1.. run effect give @e[tag=42.portal_temp] levitation 1 2 true
execute if score @s 42.portal_x matches ..-1 run effect give @e[tag=42.portal_temp,type=player] levitation 1 252 true
execute if score @s 42.portal_x matches ..-1 run data modify entity @s Motion[1] set value -.137
#
execute store result score 42.portal 42.portal_temp run data get entity @s Pos[1] 100
scoreboard players operation 42.portal 42.portal_temp -= @s 42.portal_z
execute if score @s 42.portal_x matches 1.. if score 42.portal 42.portal_temp matches 50.. run tag @s add 42.portal_temp1
execute if score @s 42.portal_x matches ..-1 if score 42.portal 42.portal_temp matches ..50 run tag @s add 42.portal_temp1
execute if score @s 42.portal_x matches 0 run tag @s add 42.portal_temp1
playsound minecraft:entity.iron_golem.attack block @a ~ ~ ~ 1 .25
#
execute if entity @s[tag=42.portal_temp1] run function 42:portal/elevator/move/stop