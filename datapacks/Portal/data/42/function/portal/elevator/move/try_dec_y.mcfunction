function 42:portal/tag_id
execute unless score @s 42.obj.portal.var.x matches 0 run function 42:portal/elevator/move/clear_end
tag @s remove 42.tag.portal.temp

tag @s remove 42.tag.portal.temp2
scoreboard players set #42.var.portal.dummy 42.obj.portal.temp 0
execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end,limit=1] positioned ~ ~-1 ~ run function 42:portal/generic/in_world
execute if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run tag @s add 42.tag.portal.temp2
tag @s remove 42.tag.portal.temp3
scoreboard players set #42.var.portal.dummy 42.obj.portal.temp 0
execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.start,limit=1] positioned ~ ~-5 ~ run function 42:portal/generic/in_world
execute if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run tag @s add 42.tag.portal.temp3

execute if score @s 42.obj.portal.var.x matches 0..5 run tag @s add 42.tag.portal.temp
execute unless entity @s[tag=42.tag.portal.temp] at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end,limit=1] positioned ~-2 ~-1 ~-2 run function 42:portal/generic/test_range {dx:4,dy:3,dz:4,mode:"unless",block:"'#42:portal/portal_replace'"}
execute unless entity @s[tag=42.tag.portal.temp] if score #42.var.portal.dummy 42.obj.portal.temp matches 1 at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end,limit=1] positioned ~-2 ~-1 ~-2 run function 42:portal/generic/find_all {dx:4,dy:3,dz:4,mode:"unless",block:"'#42:portal/portal_replace'"}
execute unless entity @s[tag=42.tag.portal.temp2] unless entity @s[tag=42.tag.portal.temp] if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run function 42:portal/elevator/move/dec_y
execute if entity @s[tag=42.tag.portal.temp] at @s if score @s 42.obj.portal.var.x matches 0 positioned ~-1 ~-1.5 ~-1 run function 42:portal/generic/test_range {dx:2,dy:0,dz:2,mode:"unless",block:"'#42:portal/portal_replace'"}
execute if entity @s[tag=42.tag.portal.temp] at @s if score @s 42.obj.portal.var.x matches 0 if score #42.var.portal.dummy 42.obj.portal.temp matches 1 positioned ~-1 ~-1.5 ~-1 run function 42:portal/generic/find_all {dx:2,dy:0,dz:2,mode:"unless",block:"'#42:portal/portal_replace'"}
execute unless entity @s[tag=42.tag.portal.temp3] if entity @s[tag=42.tag.portal.temp] at @s if score @s 42.obj.portal.var.x matches 0 if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run function 42:portal/elevator/move/dec_y
execute if entity @s[tag=42.tag.portal.temp] at @s if score @s 42.obj.portal.var.x matches 5 run function 42:portal/elevator/move/set_none

function 42:portal/tag_id
tag @s remove 42.tag.portal.temp
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end_dis] run data modify entity @s view_range set value 10f
function 42:portal/elevator/move/set_end_blocks
function 42:portal/elevator/move/snap_end
tag @e remove 42.tag.portal.id

scoreboard players add @s 42.obj.portal.xrot1 1
execute if score @s[tag=!42.tag.portal.temp2] 42.obj.portal.xrot1 matches ..-1 at @s run function 42:portal/elevator/move/try_dec_y
tag @s remove 42.tag.portal.temp2
tag @s remove 42.tag.portal.temp3