execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] at @s rotated as @p[tag=42.tag.portal.id] run rotate @s ~ ~
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis,x_rotation=0.1..90] at @s run rotate @s ~ 0

#TODO optimize turret hitbox change
execute unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis,x_rotation=-90..-30] as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit] run data merge entity @s {width:1.01,height:1.51}
execute if entity @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis,x_rotation=-90..-30] as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit] run data merge entity @s {width:1.5,height:1.01}