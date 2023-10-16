function 42:portal/tag_id
execute unless entity @s[tag=42.portal_cube1] unless entity @s[tag=42.portal_cube2] as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s run tp @s ~ ~ ~ ~45 ~
tag @e remove 42.portal_id