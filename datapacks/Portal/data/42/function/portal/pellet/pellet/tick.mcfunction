execute at @s positioned ~-.25 ~-.25 ~-.25 run function 42:portal/pellet/pellet/move_test
execute if entity @s[tag=!42.portal_pellet_valid] run function 42:portal/pellet/pellet/fizzle
tag @s remove 42.portal_pellet_valid
scoreboard players operation @s 42.portal_y = @s 42.portal_x

tag @s remove 42.portal_temp
execute positioned ~ ~-.5 ~ if entity @e[tag=42.portal_cube_col,distance=...5] run tag @s add 42.portal_temp
execute if entity @s[tag=42.portal_temp,tag=!42.portal_pellet_in_cube] run function 42:portal/pellet/pellet/bounce
tag @s remove 42.portal_pellet_in_cube
execute if entity @s[tag=42.portal_temp] run tag @s add 42.portal_pellet_in_cube
tag @s remove 42.portal_temp

execute at @s run function 42:portal/pellet/pellet/move
execute if score @s 42.portal_time matches 1.. run scoreboard players remove @s 42.portal_time 1
execute if score @s[tag=!42.portal_pellet_on] 42.portal_time matches 0 run function 42:portal/pellet/pellet/fizzle