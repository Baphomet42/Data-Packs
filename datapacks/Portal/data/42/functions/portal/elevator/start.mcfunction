function 42:portal/tag_id
function 42:portal/elevator/move/snap_start
tag @s add 42.portal_elevator_on
tag @e[tag=42.portal_id,tag=42.portal_elevator_start] add 42.portal_elevator_on
function 42:portal/elevator/doors/close
tag @s add 42.portal_elevator_wait_move
tag @s remove 42.portal_elevator_wait_door
scoreboard players set @s 42.portal_time 30
tag @e remove 42.portal_id