function 42:portal/elevator/reset
function 42:portal/tag_id
execute unless score @s 42.obj.portal.var.x matches 0 run function 42:portal/elevator/move/clear_end
scoreboard players set @s 42.obj.portal.var.x 0
execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.main] run tp @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] ~ ~ ~
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end_dis] run data modify entity @s view_range set value 0f
scoreboard players operation @s 42.obj.portal.var.z = @s 42.obj.portal.var.y
function 42:portal/elevator/move/snap_start
tag @e remove 42.tag.portal.id