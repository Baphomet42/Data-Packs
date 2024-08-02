function 42:portal/tag_id
execute unless score @s 42.portal_x matches 0 run function 42:portal/elevator/move/clear_end
tag @s remove 42.portal_temp

tag @s remove 42.portal_temp2
scoreboard players set 42.portal 42.portal_temp 0
execute at @e[tag=42.portal_id,tag=42.portal_elevator_end,limit=1] positioned ~ ~4 ~ run function 42:portal/generic/in_world
execute if score 42.portal 42.portal_temp matches 0 run tag @s add 42.portal_temp2
tag @s remove 42.portal_temp3
scoreboard players set 42.portal 42.portal_temp 0
execute at @e[tag=42.portal_id,tag=42.portal_elevator_start,limit=1] positioned ~ ~8 ~ run function 42:portal/generic/in_world
execute if score 42.portal 42.portal_temp matches 0 run tag @s add 42.portal_temp3

execute if score @s 42.portal_x matches -5..0 run tag @s add 42.portal_temp
execute unless entity @s[tag=42.portal_temp] at @e[tag=42.portal_id,tag=42.portal_elevator_end,limit=1] positioned ~-2 ~1 ~-2 run function 42:portal/generic/test_range {dx:4,dy:3,dz:4,mode:unless,block:"'#42:portal_replace'"}
execute unless entity @s[tag=42.portal_temp] if score 42.portal 42.portal_temp matches 1 at @e[tag=42.portal_id,tag=42.portal_elevator_end,limit=1] positioned ~-2 ~1 ~-2 run function 42:portal/generic/find_all {dx:4,dy:3,dz:4,mode:unless,block:"'#42:portal_replace'"}
execute unless entity @s[tag=42.portal_temp2] unless entity @s[tag=42.portal_temp] if score 42.portal 42.portal_temp matches 0 run function 42:portal/elevator/move/inc_y
execute if entity @s[tag=42.portal_temp] at @s if score @s 42.portal_x matches 0 positioned ~-1 ~3.5 ~-1 run function 42:portal/generic/test_range {dx:2,dy:0,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute if entity @s[tag=42.portal_temp] at @s if score @s 42.portal_x matches 0 if score 42.portal 42.portal_temp matches 1 positioned ~-1 ~3.5 ~-1 run function 42:portal/generic/find_all {dx:2,dy:0,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute unless entity @s[tag=42.portal_temp3] if entity @s[tag=42.portal_temp] at @s if score @s 42.portal_x matches 0 if score 42.portal 42.portal_temp matches 0 run function 42:portal/elevator/move/inc_y
execute if entity @s[tag=42.portal_temp] at @s if score @s 42.portal_x matches -5 run function 42:portal/elevator/move/set_none

function 42:portal/tag_id
tag @s remove 42.portal_temp
execute as @e[tag=42.portal_id,tag=42.portal_elevator_end_dis] run data modify entity @s view_range set value 10f
function 42:portal/elevator/move/set_end_blocks
function 42:portal/elevator/move/snap_end
tag @e remove 42.portal_id

scoreboard players remove @s 42.portal_xrot1 1
execute if score @s[tag=!42.portal_temp2] 42.portal_xrot1 matches 1.. at @s run function 42:portal/elevator/move/try_inc_y
tag @s remove 42.portal_temp2
tag @s remove 42.portal_temp3