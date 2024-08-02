function 42:portal/tag_id

execute if score @s 42.portal_cool matches 1.. run function 42:portal/elevator/move/reset
scoreboard players set @s 42.portal_cool 0
tag @s remove 42.portal_elevator_on
tag @e[tag=42.portal_elevator_start,tag=42.portal_id] remove 42.portal_elevator_on
data modify entity @s NoAI set value 1b
function 42:portal/elevator/move/snap_start
execute if entity @s[tag=42.portal_elevator_shut] run function 42:portal/elevator/doors/open

tag @e remove 42.portal_id