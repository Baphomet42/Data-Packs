execute at @s unless block ~ ~ ~ #42:portal_cube_pass run function 42:portal/pellet/pellet/fizzle
scoreboard players operation @s 42.portal_y = @s 42.portal_x
execute if entity @e[tag=42.portal_cube_tp,distance=...4] run function 42:portal/pellet/pellet/bounce
function 42:portal/pellet/pellet/move
execute if score @s 42.portal_time matches 1.. run scoreboard players remove @s 42.portal_time 1
execute if score @s[tag=!42.portal_pellet_on] 42.portal_time matches 0 run function 42:portal/pellet/pellet/fizzle