execute as @e[tag=42.portal_id,tag=42.portal_elevator_wall] at @s run function 42:portal/elevator/walls/clear

execute at @e[tag=42.portal_id,tag=42.portal_elevator_start] run fill ~-2 ~ ~-2 ~2 ~2 ~2 air replace barrier
execute at @e[tag=42.portal_id,tag=42.portal_elevator_end] run fill ~-2 ~ ~-2 ~2 ~2 ~2 air replace barrier
execute if entity @s[tag=42.portal_elevator_at_start] at @e[tag=42.portal_id,tag=42.portal_elevator_start] run fill ~-2 ~ ~-2 ~2 ~2 ~2 barrier replace #42:portal_replace
execute if entity @s[tag=42.portal_elevator_at_start] at @e[tag=42.portal_id,tag=42.portal_elevator_start] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace barrier
execute if entity @s[tag=42.portal_elevator_at_end] at @e[tag=42.portal_id,tag=42.portal_elevator_end] run fill ~-2 ~ ~-2 ~2 ~2 ~2 barrier replace #42:portal_replace
execute if entity @s[tag=42.portal_elevator_at_end] at @e[tag=42.portal_id,tag=42.portal_elevator_end] run fill ~-1 ~ ~-1 ~1 ~2 ~1 air replace barrier
execute if entity @s[tag=!42.portal_elevator_shut] at @e[tag=42.portal_id,tag=42.portal_elevator_start] run fill ^-1 ^ ^-1 ^1 ^2 ^2 air replace barrier
execute if entity @s[tag=!42.portal_elevator_shut] at @e[tag=42.portal_id,tag=42.portal_elevator_end] run fill ^-1 ^ ^-1 ^1 ^2 ^2 air replace barrier