execute if entity @s[tag=42.tag.portal.cube.hit] run function 42:portal/tag_id
execute if entity @s[tag=42.tag.portal.cube.hit] as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.main,limit=1,tag=!42.tag.portal.motion] run function 42:portal/portal/tp/tp_cube
execute if entity @s[tag=42.tag.portal.cube.hit] run tag @e remove 42.tag.portal.id