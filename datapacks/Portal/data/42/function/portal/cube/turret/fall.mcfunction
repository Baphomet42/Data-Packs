function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] at @s run rotate @s ~ -70
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit] run data merge entity @s {width:1.5,height:1.01}
execute if entity @s[tag=!42.tag.portal.turret.off,tag=!42.tag.portal.turret.malfunction] if entity @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit,tag=!42.tag.portal.cube.held] at @s run function 42:portal/cube/turret/malfunction
tag @e remove 42.tag.portal.id