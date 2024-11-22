function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s run rotate @s ~ 0
execute as @e[tag=42.portal_id,tag=42.portal_cube_hit] run data merge entity @s {width:1.01,height:1.51}
tag @e remove 42.portal_id