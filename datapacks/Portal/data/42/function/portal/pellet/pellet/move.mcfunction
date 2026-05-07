execute if entity @s[tag=!42.tag.portal.pellet.on] at @s positioned ^ ^ ^.1 positioned ~-.25 ~-.25 ~-.25 run function 42:portal/pellet/pellet/move_test
execute if entity @s[tag=!42.tag.portal.pellet.on,tag=42.tag.portal.pellet.valid] at @s run tp ^ ^ ^.05
execute if entity @s[tag=!42.tag.portal.pellet.on,tag=!42.tag.portal.pellet.valid] at @s run function 42:portal/pellet/pellet/bounce
tag @s remove 42.tag.portal.pellet.valid

tag @e remove 42.tag.portal.pellet.try_kill
tag @e remove 42.tag.portal.pellet.kill
execute if entity @s[tag=!42.tag.portal.pellet.on] positioned ~-.5 ~-.5 ~-.5 run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.pellet.try_kill

tag @a[tag=42.tag.portal.pellet.try_kill,gamemode=!spectator] add 42.tag.portal.pellet.kill
tag @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.turret,distance=...5] add 42.tag.portal.pellet.kill
execute positioned ~ ~-1 ~ run tag @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.turret,distance=...5] add 42.tag.portal.pellet.kill
tag @e[tag=42.tag.portal.pellet.try_kill,tag=42.tag.portal.cube.main,tag=42.tag.portal.radio] add 42.tag.portal.pellet.kill
tag @e[tag=42.tag.portal.pellet.try_kill,tag=42.tag.portal.pellet] add 42.tag.portal.pellet.kill

tag @s remove 42.tag.portal.pellet.kill
tag @e remove 42.tag.portal.pellet.try_kill
execute if entity @e[tag=42.tag.portal.pellet.kill] run tag @s add 42.tag.portal.pellet.kill

execute as @a[tag=42.tag.portal.pellet.kill,gamemode=!spectator,gamemode=!creative] run damage @s 500 player_explosion by @e[tag=42.tag.portal.pellet.kill,limit=1,sort=nearest]
execute as @e[tag=42.tag.portal.pellet.kill,tag=42.tag.portal.cube.main] at @s run function 42:portal/cube/fizzle
execute as @e[tag=42.tag.portal.pellet.kill,tag=42.tag.portal.pellet] run function 42:portal/pellet/pellet/fizzle
tag @e remove 42.tag.portal.pellet.kill
execute if block ~ ~ ~ water run function 42:portal/pellet/pellet/fizzle
execute if block ~ ~ ~ lava run function 42:portal/pellet/pellet/fizzle
scoreboard players remove @s 42.obj.portal.var.y 1
execute if entity @s[tag=!42.tag.portal.pellet.on] if score @s 42.obj.portal.var.y matches 1.. run function 42:portal/pellet/pellet/move