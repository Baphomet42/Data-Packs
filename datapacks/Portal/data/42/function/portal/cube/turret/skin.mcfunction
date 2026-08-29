scoreboard players add @s 42.obj.portal.skin 1
execute if score @s 42.obj.portal.skin matches 12.. run scoreboard players set @s 42.obj.portal.skin 0

execute if score @s 42.obj.portal.skin matches 0 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:quartz_block"}
execute if score @s 42.obj.portal.skin matches 1 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:bricks"}
execute if score @s 42.obj.portal.skin matches 2 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:moss_block"}
execute if score @s 42.obj.portal.skin matches 3 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:gold_block"}
execute if score @s 42.obj.portal.skin matches 4 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:oak_wood"}
execute if score @s 42.obj.portal.skin matches 5 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:diamond_block"}
execute if score @s 42.obj.portal.skin matches 6 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:sand"}
execute if score @s 42.obj.portal.skin matches 7 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:stripped_cherry_wood"}
execute if score @s 42.obj.portal.skin matches 8 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:packed_mud"}
execute if score @s 42.obj.portal.skin matches 9 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:polished_blackstone"}
execute if score @s 42.obj.portal.skin matches 10 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:sponge"}
execute if score @s 42.obj.portal.skin matches 11 as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.col] run data merge entity @s {block_state:"minecraft:white_stained_glass"}