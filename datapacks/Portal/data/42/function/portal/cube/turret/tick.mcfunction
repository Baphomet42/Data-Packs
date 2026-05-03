function 42:portal/tag_id
execute if entity @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit,tag=!42.tag.portal.cube.held] as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis,x_rotation=-30..-0.1] at @s run rotate @s ~ 0
execute if entity @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit,tag=!42.tag.portal.cube.held] if entity @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.eye,x_rotation=-90..-30] at @s run function 42:portal/cube/turret/fall
function 42:portal/tag_id

execute if entity @s[tag=42.tag.portal.turret.off,tag=42.tag.portal.turret.malfunction] at @s if score @s 42.obj.portal.var.w matches 1.. at @s run function 42:portal/cube/turret/mal_tick
execute if entity @s[tag=!42.tag.portal.turret.off] at @s run function 42:portal/cube/turret/on_tick

execute unless score @s 42.obj.portal.var.c matches 30.. positioned ~-.5 ~ ~-.5 if entity @e[tag=42.tag.portal.laser.beam,tag=!42.tag.portal.laser.beam.end,dx=0] run scoreboard players add @s 42.obj.portal.var.c 2
execute if score @s 42.obj.portal.var.c matches 1.. run function 42:portal/cube/turret/melt_tick

tag @e remove 42.tag.portal.id