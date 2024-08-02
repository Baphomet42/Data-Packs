scoreboard players add @s 42.portal_skin 1
execute if score @s 42.portal_skin matches 12.. run scoreboard players set @s 42.portal_skin 0

execute if score @s 42.portal_skin matches 0 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:quartz_block}}
execute if score @s 42.portal_skin matches 1 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:bricks}}
execute if score @s 42.portal_skin matches 2 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:moss_block}}
execute if score @s 42.portal_skin matches 3 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:gold_block}}
execute if score @s 42.portal_skin matches 4 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:oak_wood}}
execute if score @s 42.portal_skin matches 5 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:diamond_block}}
execute if score @s 42.portal_skin matches 6 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:sand}}
execute if score @s 42.portal_skin matches 7 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:stripped_cherry_wood}}
execute if score @s 42.portal_skin matches 8 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:packed_mud}}
execute if score @s 42.portal_skin matches 9 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:polished_blackstone}}
execute if score @s 42.portal_skin matches 10 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:sponge}}
execute if score @s 42.portal_skin matches 11 as @e[tag=42.portal_id,tag=42.portal_turret_col] run data merge entity @s {block_state:{Name:white_stained_glass}}