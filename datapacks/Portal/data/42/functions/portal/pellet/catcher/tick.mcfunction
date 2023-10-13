scoreboard players add @s 42.portal_time 1
execute if score @s 42.portal_time matches 20.. run scoreboard players set @s 42.portal_time 0
execute if score @s 42.portal_time matches 5 run function 42:portal/pellet/catcher/laser/reset