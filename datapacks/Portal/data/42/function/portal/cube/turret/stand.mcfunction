function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] at @s run rotate @s ~ 0
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit] run data merge entity @s {width:1.01,height:1.51}
tag @e remove 42.tag.portal.id