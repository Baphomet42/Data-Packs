function 42:portal/tag_id
execute if entity @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit,tag=!42.tag.portal.cube.held] as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis,x_rotation=-30..-0.1] at @s run rotate @s ~ 0
execute if entity @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit,tag=!42.tag.portal.cube.held] if entity @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.eye,x_rotation=-90..-30] at @s run function 42:portal/cube/turret/fall
function 42:portal/tag_id

execute if entity @s[tag=42.tag.portal.turret.off,tag=42.tag.portal.turret.malfunction] at @s if score @s 42.obj.portal.var.w matches 1.. at @s run function 42:portal/cube/turret/mal_tick
execute if entity @s[tag=!42.tag.portal.turret.off] at @s run function 42:portal/cube/turret/on_tick