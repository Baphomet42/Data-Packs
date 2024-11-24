data modify entity @s NoAI set value 0b
tag @s remove 42.tag.portal.elevator.wait_move
scoreboard players add @a[tag=42.tag.portal.temp] 42.obj.portal.death 1
execute as @a[tag=42.tag.portal.temp] at @s align y if block ~ ~ ~ smooth_quartz_slab run tp @s ~ ~.5 ~
execute as @a[tag=42.tag.portal.temp] at @s align y if block ~ ~-1 ~ smooth_quartz_slab run tp @s ~ ~-.5 ~
execute as @a[tag=42.tag.portal.temp] at @s align y if block ~ ~-2 ~ smooth_quartz_slab run tp @s ~ ~-1.5 ~
execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.start] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace smooth_quartz_slab
execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace smooth_quartz_slab
scoreboard players set @s 42.obj.portal.cool 1
tag @s remove 42.tag.portal.elevator.at_start
tag @s remove 42.tag.portal.elevator.at_end