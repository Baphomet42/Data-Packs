execute at @s positioned ~-.25 ~-.25 ~-.25 run function 42:portal/pellet/pellet/move_test
execute if entity @s[tag=!42.tag.portal.pellet.valid] run function 42:portal/pellet/pellet/fizzle
tag @s remove 42.tag.portal.pellet.valid
scoreboard players operation @s 42.obj.portal.var.y = @s 42.obj.portal.var.x

tag @s remove 42.tag.portal.temp
execute positioned ~ ~-.5 ~ if entity @e[tag=42.tag.portal.cube.main,distance=...5] run tag @s add 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.temp,tag=!42.tag.portal.pellet.in_cube] run function 42:portal/pellet/pellet/bounce
tag @s remove 42.tag.portal.pellet.in_cube
execute if entity @s[tag=42.tag.portal.temp] run tag @s add 42.tag.portal.pellet.in_cube
tag @s remove 42.tag.portal.temp

execute at @s run function 42:portal/pellet/pellet/move
execute if score @s 42.obj.portal.time matches 1.. run scoreboard players remove @s 42.obj.portal.time 1
execute if score @s[tag=!42.tag.portal.pellet.on] 42.obj.portal.time matches 0 run function 42:portal/pellet/pellet/fizzle