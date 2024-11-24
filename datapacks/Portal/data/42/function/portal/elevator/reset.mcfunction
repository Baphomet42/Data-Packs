function 42:portal/tag_id

execute if score @s 42.obj.portal.cool matches 1.. run function 42:portal/elevator/move/reset
scoreboard players set @s 42.obj.portal.cool 0
tag @s remove 42.tag.portal.elevator.on
tag @e[tag=42.tag.portal.elevator.start,tag=42.tag.portal.id] remove 42.tag.portal.elevator.on
data modify entity @s NoAI set value 1b
function 42:portal/elevator/move/snap_start
execute if entity @s[tag=42.tag.portal.elevator.shut] run function 42:portal/elevator/doors/open

tag @e remove 42.tag.portal.id