function 42:portal/tag_id

scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.time
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.beam] if score @s 42.obj.portal.time >= #42.var.portal.dummy 42.obj.portal.temp at @s run function 42:portal/laser/beam/fizzle

scoreboard players remove #42.var.portal.dummy 42.obj.portal.temp 1
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.beam] if score @s 42.obj.portal.time = #42.var.portal.dummy 42.obj.portal.temp run tag @s add 42.tag.portal.laser.beam.end

tag @e remove 42.tag.portal.id