tag @s remove 42.portal_temp
execute at @s run particle cloud ~ ~.5 ~ 0 0 0 0 1 force
#
scoreboard players set 42.portal 42.portal_temp 0
execute at @s positioned ~ ~-1 ~ run function 42:portal/generic/in_world
execute at @s positioned ~ ~4 ~ run function 42:portal/generic/in_world
execute if score 42.portal 42.portal_temp matches ..1 run tag @s remove 42.portal_elevator_valid
#
execute if entity @s[tag=42.portal_elevator_valid] at @s positioned ~-1 ~ ~-1 run function 42:portal/generic/test_range {dx:2,dy:0,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute if entity @s[tag=42.portal_elevator_valid] at @s positioned ~-1 ~ ~-1 if score 42.portal 42.portal_temp matches 1 run function 42:portal/generic/find_all {dx:2,dy:0,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute if entity @s[tag=42.portal_elevator_valid] if score 42.portal 42.portal_temp matches 1 run tag @s remove 42.portal_elevator_valid
#
execute if entity @s[tag=42.portal_elevator_valid] at @s positioned ~-2 ~ ~-2 run function 42:portal/generic/test_range {dx:4,dy:0,dz:4,mode:if,block:"'barrier'"}
execute if entity @s[tag=42.portal_elevator_valid] at @s positioned ~-2 ~ ~-2 if score 42.portal 42.portal_temp matches 1 run function 42:portal/generic/find_all {dx:4,dy:0,dz:4,mode:if,block:"'barrier'"}
execute if entity @s[tag=42.portal_elevator_valid] if score 42.portal 42.portal_temp matches 1 run tag @s remove 42.portal_elevator_valid
#
execute unless entity @s[tag=42.portal_elevator_valid] run tag @s add 42.portal_temp
execute if entity @s[tag=42.portal_elevator_valid] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 barrier replace #42:portal_replace
#
execute if entity @s[tag=42.portal_elevator_valid] at @s positioned ~-2 ~ ~-2 run function 42:portal/generic/test_range {dx:4,dy:0,dz:4,mode:if,block:"'#42:projectile_pass'"}
execute if entity @s[tag=42.portal_elevator_valid] at @s positioned ~-2 ~ ~-2 if score 42.portal 42.portal_temp matches 1 run function 42:portal/generic/find_all {dx:4,dy:0,dz:4,mode:if,block:"'#42:projectile_pass'"}
execute if entity @s[tag=42.portal_elevator_valid] if score 42.portal 42.portal_temp matches 1 run tag @s remove 42.portal_elevator_valid
execute at @s[tag=!42.portal_temp] run fill ~-2 ~ ~-2 ~2 ~ ~2 air replace barrier
#
execute at @s if score @s 42.portal_x matches 1.. run tp @s ~ ~1 ~ ~ ~
execute at @s if score @s 42.portal_x matches ..-1 run tp @s ~ ~-1 ~ ~ ~
execute at @s if score @s 42.portal_x matches 1.. run scoreboard players remove @s 42.portal_x 100
execute at @s if score @s 42.portal_x matches ..-1 run scoreboard players add @s 42.portal_x 100
#
scoreboard players remove @s 42.portal_time 1
execute if score @s 42.portal_time matches 1.. if entity @s[tag=42.portal_elevator_valid] at @s unless score @s 42.portal_x matches 0 run function 42:portal/elevator/move/set/test_distance
execute if entity @s[tag=42.portal_elevator_valid] at @s if score @s 42.portal_x matches 0 run function 42:portal/elevator/move/set/test_point
kill @s[tag=!42.portal_elevator_valid]