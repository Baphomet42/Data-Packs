data modify entity @s NoAI set value 0b
tag @s remove 42.portal_elevator_wait_move
execute as @a[tag=42.portal_temp] at @s align y if block ~ ~ ~ smooth_quartz_slab run tp @s ~ ~.5 ~
execute as @a[tag=42.portal_temp] at @s align y if block ~ ~-1 ~ smooth_quartz_slab run tp @s ~ ~-.5 ~
execute as @a[tag=42.portal_temp] at @s align y if block ~ ~-2 ~ smooth_quartz_slab run tp @s ~ ~-1.5 ~
execute at @e[tag=42.portal_id,tag=42.portal_elevator_start] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace smooth_quartz_slab
execute at @e[tag=42.portal_id,tag=42.portal_elevator_end] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace smooth_quartz_slab
scoreboard players set @s 42.portal_cool 1
tag @s remove 42.portal_elevator_at_start
tag @s remove 42.portal_elevator_at_end