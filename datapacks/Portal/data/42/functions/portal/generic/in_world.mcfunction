#   before calling this function: /scoreboard players set 42.portal 42.portal_temp 0
#   call this function at any position to test if it's in the world height
#   if the block is in the world height, it adds 1 to 42.portal 42.portal_temp
#   call as many in a row as needed, then test if the score is equal to the number of function calls
tag @s remove 42.portal_temp3
execute if block ~ ~ ~ air run tag @s add 42.portal_temp3
execute unless block ~ ~ ~ air run tag @s add 42.portal_temp3
execute if entity @s[tag=42.portal_temp3] run scoreboard players add 42.portal 42.portal_temp 1
execute unless entity @s[tag=42.portal_temp3] align xyz positioned ~.5 ~.5 ~.5 run particle block_marker barrier ~ ~ ~ 0 0 0 0 1 force
tag @s remove 42.portal_temp3