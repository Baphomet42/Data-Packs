tag @s remove 42.tag.portal.elevator.wait_move
scoreboard players add @a[tag=42.tag.portal.temp.in_elevator] 42.obj.portal.death 1
function 42:portal/elevator/move/snap_rider
tag @s add 42.tag.portal.elevator.is_moving
tag @s remove 42.tag.portal.elevator.at_start
tag @s remove 42.tag.portal.elevator.at_end