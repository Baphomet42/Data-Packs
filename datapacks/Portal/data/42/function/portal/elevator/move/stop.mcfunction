effect clear @e[tag=42.tag.portal.temp] levitation
effect clear @e[tag=42.tag.portal.temp] slow_falling
data modify entity @s NoAI set value 1b
function 42:portal/elevator/move/snap_end
execute as @a[tag=42.tag.portal.temp] at @s align y if block ~ ~1 ~ smooth_quartz_slab run tp @s ~ ~1.5 ~
execute as @a[tag=42.tag.portal.temp] at @s align y if block ~ ~ ~ smooth_quartz_slab run tp @s ~ ~.5 ~
tag @s add 42.tag.portal.elevator.wait_door
scoreboard players set @s 42.obj.portal.time 230
scoreboard players set @s 42.obj.portal.cool 0
function 42:portal/elevator/walls/reset