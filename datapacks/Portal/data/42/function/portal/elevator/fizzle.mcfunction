function 42:portal/tag_id
function 42:portal/elevator/move/set_none
function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_elevator_start] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace smooth_quartz_slab
execute as @e[tag=42.portal_id,tag=42.portal_elevator_start] at @s run fill ~-2 ~ ~-2 ~2 ~2 ~2 air replace barrier
execute as @e[tag=42.portal_id,tag=42.portal_elevator_start] at @s run fill ~-2 ~3 ~-2 ~2 ~3 ~2 air replace smooth_quartz_stairs

kill @e[tag=42.portal_id,tag=42.portal_elevator_group]
tag @e remove 42.portal_id