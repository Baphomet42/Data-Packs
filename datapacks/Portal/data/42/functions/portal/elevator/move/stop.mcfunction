effect clear @e[tag=42.portal_temp] levitation
effect clear @e[tag=42.portal_temp] slow_falling
data modify entity @s NoAI set value 1b
function 42:portal/elevator/move/snap_end
execute if score @s 42.portal_x matches 1.. as @e[tag=42.portal_temp,tag=!42.portal_elevator] at @s align y if block ~ ~1 ~ smooth_quartz_slab run tp @s ~ ~1.5 ~
execute if score @s 42.portal_x matches 1.. as @e[tag=42.portal_temp,tag=!42.portal_elevator] at @s align y if block ~ ~ ~ smooth_quartz_slab run tp @s ~ ~.5 ~
tag @s add 42.portal_elevator_wait_door
scoreboard players set @s 42.portal_time 230
scoreboard players set @s 42.portal_cool 0
function 42:portal/elevator/walls/reset