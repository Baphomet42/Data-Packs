function 42:portal/tag_id
#
tag @s remove 42.portal_elevator_on
tag @e[tag=42.portal_elevator_start,tag=42.portal_id] remove 42.portal_elevator_on
data modify entity @s NoAI set value 1b
function 42:portal/elevator/move/snap_start
execute if entity @s[tag=42.portal_elevator_shut] run function 42:portal/elevator/doors/open
#
tag @e remove 42.portal_id