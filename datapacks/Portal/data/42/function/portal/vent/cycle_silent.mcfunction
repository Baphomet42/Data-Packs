scoreboard players add @s[tag=42.tag.portal.vent] 42.obj.portal.var.x 1
execute unless score @s 42.obj.portal.var.x matches 1..8 run scoreboard players set @s 42.obj.portal.var.x 1

tag @s remove 42.tag.portal.tags.has_tick

tag @s remove 42.tag.portal.vent.mode.cube
tag @s remove 42.tag.portal.tool.spawn.cube.storage
tag @s remove 42.tag.portal.tool.spawn.cube.companion
tag @s remove 42.tag.portal.tool.spawn.cube.laser
tag @s remove 42.tag.portal.tool.spawn.cube.old

tag @s remove 42.tag.portal.vent.mode.gel
tag @s remove 42.tag.portal.tool.spawn.gel.blue
tag @s remove 42.tag.portal.tool.spawn.gel.orange
tag @s remove 42.tag.portal.tool.spawn.gel.white
tag @s remove 42.tag.portal.tool.spawn.gel.clear

execute if score @s 42.obj.portal.var.x matches 1..4 run tag @s add 42.tag.portal.vent.mode.cube
execute if score @s 42.obj.portal.var.x matches 1 run tag @s add 42.tag.portal.tool.spawn.cube.storage
execute if score @s 42.obj.portal.var.x matches 2 run tag @s add 42.tag.portal.tool.spawn.cube.companion
execute if score @s 42.obj.portal.var.x matches 3 run tag @s add 42.tag.portal.tool.spawn.cube.laser
execute if score @s 42.obj.portal.var.x matches 4 run tag @s add 42.tag.portal.tool.spawn.cube.storage
execute if score @s 42.obj.portal.var.x matches 4 run tag @s add 42.tag.portal.tool.spawn.cube.old

execute if score @s 42.obj.portal.var.x matches 5..8 run tag @s add 42.tag.portal.vent.mode.gel
execute if score @s 42.obj.portal.var.x matches 5..8 run tag @s add 42.tag.portal.tags.has_tick
execute if score @s 42.obj.portal.var.x matches 5 run tag @s add 42.tag.portal.tool.spawn.gel.blue
execute if score @s 42.obj.portal.var.x matches 6 run tag @s add 42.tag.portal.tool.spawn.gel.orange
execute if score @s 42.obj.portal.var.x matches 7 run tag @s add 42.tag.portal.tool.spawn.gel.white
execute if score @s 42.obj.portal.var.x matches 8 run tag @s add 42.tag.portal.tool.spawn.gel.clear

function 42:portal/vent/fizzle_cube