execute if score @s 42.portal_x matches 1.. run effect give @e[tag=42.portal_temp] levitation 1 2 true
execute if score @s 42.portal_x matches ..-1 run effect give @e[tag=42.portal_temp,type=player] levitation 1 252 true
execute if score @s 42.portal_x matches ..-1 run effect give @e[tag=42.portal_temp,type=!player] slow_falling 1 4 true
#
execute store result score 42.portal 42.portal_temp run data get entity @s Pos[1] 100
scoreboard players operation 42.portal 42.portal_temp -= @s 42.portal_z
execute if score @s 42.portal_x matches 1.. if score 42.portal 42.portal_temp matches 50.. run tag @s add 42.portal_temp1
execute if score @s 42.portal_x matches ..-1 if score 42.portal 42.portal_temp matches ..0 run tag @s add 42.portal_temp1
execute if score @s 42.portal_x matches 0 run tag @s add 42.portal_temp1
#
execute if entity @s[tag=42.portal_temp1] run function 42:portal/elevator/move/stop