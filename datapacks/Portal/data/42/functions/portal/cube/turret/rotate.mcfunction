function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[tag=42.portal_id,tag=42.portal_cube] at @s run tp @s ~ ~ ~ ~90 ~
tag @e remove 42.portal_id