effect clear @e[tag=42.tag.portal.temp] levitation
function 42:portal/elevator/move/snap_end
tag @s add 42.tag.portal.elevator.wait_door
scoreboard players set @s 42.obj.portal.time 230
scoreboard players set @s 42.obj.portal.cool 0
function 42:portal/elevator/walls/reset