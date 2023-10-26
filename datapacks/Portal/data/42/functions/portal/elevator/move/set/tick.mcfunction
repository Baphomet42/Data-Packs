scoreboard players set @e[tag=42.portal_id,tag=42.portal_elevator_marker] 42.portal_time 20
execute as @e[tag=42.portal_id,tag=42.portal_elevator_marker] at @s run function 42:portal/elevator/move/set/test_distance
execute unless entity @e[tag=42.portal_id,tag=42.portal_elevator_marker] run function 42:portal/elevator/move/set/final