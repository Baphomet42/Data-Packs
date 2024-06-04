function 42:portal/elevator/reset
function 42:portal/tag_id
execute unless score @s 42.portal_x matches 0 run function 42:portal/elevator/move/clear_end
scoreboard players set @s 42.portal_x 0
execute at @e[tag=42.portal_id,tag=42.portal_elevator_start] run tp @e[tag=42.portal_id,tag=42.portal_elevator_end] ~ ~ ~
execute as @e[tag=42.portal_id,tag=42.portal_elevator_end_dis] run data modify entity @s view_range set value 0f
scoreboard players operation @s 42.portal_z = @s 42.portal_y
function 42:portal/elevator/move/snap_start
tag @e remove 42.portal_id