execute if entity @s[tag=!42.tag.portal.elevator.show] run function 42:portal/elevator/show

function 42:portal/tag_id
function 42:portal/elevator/doors/close_silent
function 42:portal/elevator/move/snap_start
tag @s add 42.tag.portal.elevator.on
tag @s add 42.tag.portal.elevator.wait_move
tag @s remove 42.tag.portal.elevator.wait_door
scoreboard players set @s 42.obj.portal.time 1
tag @e remove 42.tag.portal.id