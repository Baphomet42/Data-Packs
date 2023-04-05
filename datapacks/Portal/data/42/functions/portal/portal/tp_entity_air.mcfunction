tag @s add 42.portal_motion_tp
execute store result score @s 42.portal_x run data get entity @s Motion[0] 1000
execute store result score @s 42.portal_y run data get entity @s Motion[1] 1000
execute store result score @s 42.portal_z run data get entity @s Motion[2] 1000
scoreboard players set @s 42.portal_cool 0
execute store result entity @s Motion[1] double .001 run scoreboard players get @s 42.portal_y
execute at @s run function 42:portal/portal/tp_motion