effect clear @e[tag=42.tag.portal.temp.in_elevator] levitation
function 42:portal/elevator/move/snap_end
tag @s add 42.tag.portal.elevator.wait_door
scoreboard players set @s 42.obj.portal.time 230
tag @s remove 42.tag.portal.elevator.is_moving
function 42:portal/elevator/walls/reset