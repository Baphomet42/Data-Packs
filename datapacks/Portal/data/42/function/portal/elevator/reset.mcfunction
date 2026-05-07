function 42:portal/tag_id

execute if entity @s[tag=42.tag.portal.elevator.is_moving] run function 42:portal/elevator/move/reset
tag @s remove 42.tag.portal.elevator.is_moving
tag @s remove 42.tag.portal.elevator.on
function 42:portal/elevator/move/snap_start
execute if entity @s[tag=42.tag.portal.elevator.shut] run function 42:portal/elevator/doors/open

tag @e remove 42.tag.portal.id