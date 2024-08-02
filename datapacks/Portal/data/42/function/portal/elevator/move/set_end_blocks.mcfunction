execute as @e[tag=42.portal_id,tag=42.portal_elevator_end] at @s run fill ~-2 ~ ~-2 ~2 ~2 ~2 barrier replace #42:portal_replace
execute as @e[tag=42.portal_id,tag=42.portal_elevator_end] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_quartz_slab replace barrier
execute as @e[tag=42.portal_id,tag=42.portal_elevator_end] at @s run fill ~-1 ~3 ~-2 ~1 ~3 ~-2 smooth_quartz_stairs[facing=south,half=top] replace #42:portal_replace
execute as @e[tag=42.portal_id,tag=42.portal_elevator_end] at @s run fill ~-1 ~3 ~2 ~1 ~3 ~2 smooth_quartz_stairs[facing=north,half=top] replace #42:portal_replace
execute as @e[tag=42.portal_id,tag=42.portal_elevator_end] at @s run fill ~2 ~3 ~-1 ~2 ~3 ~1 smooth_quartz_stairs[facing=west,half=top] replace #42:portal_replace
execute as @e[tag=42.portal_id,tag=42.portal_elevator_end] at @s run fill ~-2 ~3 ~-1 ~-2 ~3 ~1 smooth_quartz_stairs[facing=east,half=top] replace #42:portal_replace
execute as @e[tag=42.portal_id,tag=42.portal_elevator_end] at @s run fill ^-1 ^ ^-1 ^1 ^2 ^2 air replace barrier

execute as @e[tag=42.portal_id,tag=42.portal_elevator_end] store result score @e[tag=42.portal_id,tag=42.portal_elevator] 42.portal_z run data get entity @s Pos[1] 100