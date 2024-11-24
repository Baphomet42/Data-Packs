function 42:portal/tag_id
function 42:portal/elevator/move/snap_start
tag @s add 42.tag.portal.elevator.on
tag @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.start] add 42.tag.portal.elevator.on
execute unless entity @s[tag=42.tag.portal.elevator.shut] run function 42:portal/elevator/doors/close
tag @s add 42.tag.portal.elevator.wait_move
tag @s remove 42.tag.portal.elevator.wait_door
scoreboard players set @s 42.obj.portal.time 30
tag @e remove 42.tag.portal.id