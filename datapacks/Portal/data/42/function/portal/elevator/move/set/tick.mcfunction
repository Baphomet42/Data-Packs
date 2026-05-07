function 42:portal/tag_id

scoreboard players set @s 42.obj.portal.time 1
function 42:portal/elevator/move/set/test_distance
execute unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.marker] as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.main] at @s run function 42:portal/elevator/move/set/final

tag @e remove 42.tag.portal.id