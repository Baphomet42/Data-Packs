execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] run tp @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.car,limit=1] ~ ~.5 ~
tag @s remove 42.tag.portal.elevator.at_start
tag @s add 42.tag.portal.elevator.at_end
function 42:portal/elevator/walls/reset
function 42:portal/elevator/move/snap_rider