execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] at @s run fill ~-2 ~ ~-2 ~2 ~2 ~2 barrier replace #42:portal/portal_replace
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] at @s run fill ~-1 ~3 ~-2 ~1 ~3 ~-2 smooth_quartz_stairs[facing=south,half=top] replace #42:portal/portal_replace
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] at @s run fill ~-1 ~3 ~2 ~1 ~3 ~2 smooth_quartz_stairs[facing=north,half=top] replace #42:portal/portal_replace
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] at @s run fill ~2 ~3 ~-1 ~2 ~3 ~1 smooth_quartz_stairs[facing=west,half=top] replace #42:portal/portal_replace
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] at @s run fill ~-2 ~3 ~-1 ~-2 ~3 ~1 smooth_quartz_stairs[facing=east,half=top] replace #42:portal/portal_replace
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace barrier
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] at @s run fill ^-1 ^ ^-1 ^1 ^2 ^2 air replace barrier

execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] store result score @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator] 42.obj.portal.var.z run data get entity @s Pos[1] 100