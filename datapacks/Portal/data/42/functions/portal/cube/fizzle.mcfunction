playsound minecraft:block.fire.extinguish block @a ~ ~.5 ~ 1.5 1
playsound minecraft:block.beacon.deactivate block @a ~ ~.5 ~ 2 1
particle minecraft:large_smoke ~ ~.5 ~ .4 .4 .4 0 20
scoreboard players set @a[tag=42.portal_id] 42.portal_id 0
kill @e[tag=42.portal_id,tag=42.portal_cube_col]
kill @e[tag=42.portal_id,tag=42.portal_cube_hit]
kill @e[tag=42.portal_id,tag=42.portal_cube]
tag @e[tag=42.portal_id,tag=42.portal_cube_dis] add 42.portal_fizzle
#dis effect instead of kill
kill @e[tag=42.portal_id,tag=42.portal_cube_tp]