data modify entity @s NoAI set value 0b
tag @s remove 42.portal_elevator_wait_move
execute at @e[tag=42.portal_id,tag=42.portal_elevator_start] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace smooth_quartz_slab
execute at @e[tag=42.portal_id,tag=42.portal_elevator_end] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace smooth_quartz_slab
scoreboard players set @s 42.portal_u 1