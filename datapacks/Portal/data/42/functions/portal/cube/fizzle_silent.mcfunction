function 42:portal/tag_id
scoreboard players set @a[tag=42.portal_id] 42.portal_id 0
kill @e[tag=42.portal_id,tag=42.portal_cube_col]
kill @e[tag=42.portal_id,tag=42.portal_cube_hit]
kill @e[tag=42.portal_id,tag=42.portal_cube]
kill @e[tag=42.portal_id,tag=42.portal_cube_display]
execute as @e[tag=42.portal_id,tag=42.portal_turret] at @s run function 42:portal/cube/turret/fizzle
kill @e[tag=42.portal_id,tag=42.portal_cube_dis]
kill @e[tag=42.portal_id,tag=42.portal_cube_tp]
tag @e remove 42.portal_id