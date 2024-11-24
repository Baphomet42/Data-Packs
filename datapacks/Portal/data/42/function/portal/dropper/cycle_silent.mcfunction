scoreboard players add @s[tag=42.tag.portal.dropper] 42.obj.portal.var.x 1
execute unless score @s 42.obj.portal.var.x matches 1..4 run scoreboard players set @s 42.obj.portal.var.x 1
tag @s remove 42.tag.portal.tool.spawn.cube.storage
tag @s remove 42.tag.portal.tool.spawn.cube.companion
tag @s remove 42.tag.portal.tool.spawn.cube.laser
tag @s remove 42.tag.portal.tool.spawn.cube.old
execute if score @s 42.obj.portal.var.x matches 1 run tag @s add 42.tag.portal.tool.spawn.cube.storage
execute if score @s 42.obj.portal.var.x matches 2 run tag @s add 42.tag.portal.tool.spawn.cube.companion
execute if score @s 42.obj.portal.var.x matches 3 run tag @s add 42.tag.portal.tool.spawn.cube.laser
execute if score @s 42.obj.portal.var.x matches 4 run tag @s add 42.tag.portal.tool.spawn.cube.storage
execute if score @s 42.obj.portal.var.x matches 4 run tag @s add 42.tag.portal.tool.spawn.cube.old
function 42:portal/dropper/fizzle_cube