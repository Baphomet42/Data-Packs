function 42:portal/portal/tag_pair
#
scoreboard players operation 42.portal 42.portal_temp = @e[tag=42.portal_pair,tag=42.portal_a,tag=42.portal,limit=1] 42.portal_x
scoreboard players operation 42.portal 42.portal_temp -= @e[tag=42.portal_pair,tag=42.portal_b,tag=42.portal,limit=1] 42.portal_x
scoreboard players operation @e[tag=42.portal_pair,tag=42.portal_a,tag=42.portal,limit=1] 42.portal_z = 42.portal 42.portal_temp
execute if score @e[tag=42.portal_pair,tag=42.portal_a,tag=42.portal,limit=1] 42.portal_z matches ..-1 run scoreboard players add @e[tag=42.portal_pair,tag=42.portal_a,tag=42.portal,limit=1] 42.portal_z 4
#
scoreboard players operation 42.portal 42.portal_temp = @e[tag=42.portal_pair,tag=42.portal_b,tag=42.portal,limit=1] 42.portal_x
scoreboard players operation 42.portal 42.portal_temp -= @e[tag=42.portal_pair,tag=42.portal_a,tag=42.portal,limit=1] 42.portal_x
scoreboard players operation @e[tag=42.portal_pair,tag=42.portal_b,tag=42.portal,limit=1] 42.portal_z = 42.portal 42.portal_temp
execute if score @e[tag=42.portal_pair,tag=42.portal_b,tag=42.portal,limit=1] 42.portal_z matches ..-1 run scoreboard players add @e[tag=42.portal_pair,tag=42.portal_b,tag=42.portal,limit=1] 42.portal_z 4
#
execute if entity @e[tag=42.portal_a,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=0}] if entity @e[tag=42.portal_b,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=0}] run scoreboard players set @e[tag=42.portal,tag=42.portal_pair] 42.portal_w 0
execute if entity @e[tag=42.portal_a,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=0}] if entity @e[tag=42.portal_b,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2}] run scoreboard players set @e[tag=42.portal,tag=42.portal_pair] 42.portal_w -2
execute if entity @e[tag=42.portal_a,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=0}] if entity @e[tag=42.portal_b,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2}] run scoreboard players set @e[tag=42.portal,tag=42.portal_pair] 42.portal_w 2
execute if entity @e[tag=42.portal_a,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2}] if entity @e[tag=42.portal_b,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=0}] run scoreboard players set @e[tag=42.portal,tag=42.portal_pair] 42.portal_w -2
execute if entity @e[tag=42.portal_a,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2}] if entity @e[tag=42.portal_b,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2}] run scoreboard players set @e[tag=42.portal,tag=42.portal_pair] 42.portal_w -4
execute if entity @e[tag=42.portal_a,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2}] if entity @e[tag=42.portal_b,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2}] run scoreboard players set @e[tag=42.portal,tag=42.portal_pair] 42.portal_w 0
execute if entity @e[tag=42.portal_a,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2}] if entity @e[tag=42.portal_b,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=0}] run scoreboard players set @e[tag=42.portal,tag=42.portal_pair] 42.portal_w 2
execute if entity @e[tag=42.portal_a,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2}] if entity @e[tag=42.portal_b,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2}] run scoreboard players set @e[tag=42.portal,tag=42.portal_pair] 42.portal_w 0
execute if entity @e[tag=42.portal_a,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2}] if entity @e[tag=42.portal_b,tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2}] run scoreboard players set @e[tag=42.portal,tag=42.portal_pair] 42.portal_w 4
#
tag @e remove 42.portal_pair