function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s run tp @s ~ ~ ~ 0 0
execute as @e[tag=42.portal_id,tag=42.portal_cube] at @s run tp @s ~ ~ ~ 0 0
execute as @e[tag=42.portal_cube_tp,tag=42.portal_id] at @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
tag @e remove 42.portal_id