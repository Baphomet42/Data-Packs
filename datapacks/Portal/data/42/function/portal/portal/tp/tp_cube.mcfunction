execute if entity @s[tag=42.tag.portal.cube.hit] run function 42:portal/tag_id
execute if entity @s[tag=42.tag.portal.cube.hit] as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.tp,limit=1,tag=!42.tag.portal.motion.tp] run function 42:portal/portal/tp/tp_cube
execute if entity @s[tag=42.tag.portal.cube.hit] run tag @e remove 42.tag.portal.id
execute if entity @s[tag=42.tag.portal.cube.tp] if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0..}] at @e[tag=42.tag.portal.portal.tp2] positioned ^ ^-.8125 ^1.8 run tp @s ~ ~ ~
execute if entity @s[tag=42.tag.portal.cube.tp] if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0..}] run data remove entity @s Motion
execute if entity @s[tag=42.tag.portal.cube.tp] if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=..-1}] run function 42:portal/portal/tp/tp_cube_air
execute if entity @s[tag=42.tag.portal.cube.tp,tag=42.tag.portal.turret] at @s run function 42:portal/portal/tp/tp_turret