scoreboard players set @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.marker] 42.obj.portal.time 20
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.marker] at @s run function 42:portal/elevator/move/set/test_distance
execute unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.marker] run function 42:portal/elevator/move/set/final