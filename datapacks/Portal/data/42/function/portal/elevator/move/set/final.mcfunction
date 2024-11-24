execute if score @s 42.obj.portal.var.x matches 0 as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end_dis] run data modify entity @s view_range set value 0f
execute unless score @s 42.obj.portal.var.x matches 0 as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end_dis] run data modify entity @s view_range set value 10f
function 42:portal/elevator/move/set_end_blocks
function 42:portal/elevator/move/snap_end
tag @s remove 42.tag.portal.elevator.search