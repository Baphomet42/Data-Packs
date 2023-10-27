playsound minecraft:block.fire.extinguish block @a ~ ~.5 ~ 1.5 1
playsound minecraft:block.beacon.deactivate block @a ~ ~.5 ~ 4 1
particle minecraft:large_smoke ~ ~.5 ~ .4 .4 .4 0 20
function 42:portal/tag_id
scoreboard players set @a[tag=42.portal_id] 42.portal_id 0
kill @e[tag=42.portal_id,tag=42.portal_cube_col]
kill @e[tag=42.portal_id,tag=42.portal_cube_hit]
kill @e[tag=42.portal_id,tag=42.portal_cube]
kill @e[tag=42.portal_id,tag=42.portal_cube_display]
execute as @e[tag=42.portal_id,tag=42.portal_turret] at @s run function 42:portal/cube/turret/fizzle
tag @e[tag=42.portal_id,tag=42.portal_cube_dis] add 42.portal_fizzle
kill @e[tag=42.portal_id,tag=42.portal_cube_tp]
execute as @e[tag=42.portal_id,tag=42.portal_dropper_on,tag=!42.portal_dropper_fizzle] at @s run function 42:portal/dropper/drop
tag @e remove 42.portal_id