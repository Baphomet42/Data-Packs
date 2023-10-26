function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_elevator,tag=42.portal_elevator_search] at @s run function 42:portal/elevator/move/set/tick
tag @e remove 42.portal_temp
execute unless entity @e[tag=42.portal_id,tag=42.portal_elevator,tag=42.portal_elevator_search] unless entity @e[tag=42.portal_id,tag=42.portal_elevator,tag=42.portal_elevator_off] positioned ~-1.5 ~.5 ~-1.5 run tag @a[dx=2,dy=2,dz=2,gamemode=!spectator,tag=!42.portal_motion] add 42.portal_temp
execute if entity @a[tag=42.portal_temp] run function 42:portal/elevator/try_start
tag @e remove 42.portal_temp
tag @e remove 42.portal_id