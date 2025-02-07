#Set the number of ticks in a full health bar
scoreboard players operation .red_ticks math = .max_ticks math
scoreboard players operation .white_ticks math = .max_ticks math

#Calculate the number of red ticks
scoreboard players operation .red_ticks math *= @s current_health
scoreboard players operation .red_ticks math /= @s max_health

#Avoid red ticks rounding to 0 if player is alive
execute if score .red_ticks math matches 0 if score @s current_health matches 1.. run scoreboard players set .red_ticks math 1

#Calculate the number of white ticks
scoreboard players operation .white_ticks math -= .red_ticks math

#Setup lists
data modify storage temp temp.red set value []
data modify storage temp temp.white set value []
function 42:labs/test/health_bar/setup_lists

#Display health
title @s actionbar [{"color":"red","storage":"temp","nbt":"temp.red[]","separator":""},{"color":"white","storage":"temp","nbt":"temp.white[]","separator":""}]

#Cleanup
data remove storage temp temp