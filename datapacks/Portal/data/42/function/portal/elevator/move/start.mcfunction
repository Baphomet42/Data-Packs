tag @s remove 42.tag.portal.elevator.wait_move
scoreboard players add @a[tag=42.tag.portal.temp] 42.obj.portal.death 1
function 42:portal/elevator/move/snap_rider
scoreboard players set @s 42.obj.portal.cool 1
tag @s remove 42.tag.portal.elevator.at_start
tag @s remove 42.tag.portal.elevator.at_end