execute if entity @s[tag=42.tag.portal.cube.activates] at @s run function 42:portal/cube/try_activate

execute positioned ~ ~.5 ~ if predicate 42:location_fluid run function 42:portal/cube/fizzle
execute if entity @s[tag=42.tag.portal.cube.size_1] positioned ~-.75 ~-.25 ~-.75 as @e[tag=42.tag.portal.turret.hit,tag=!42.tag.portal.cube.held,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] positioned ~.5 ~.5 ~.5 if entity @s[dx=0,dy=0,dz=0] at @s run function 42:portal/cube/turret/fall
execute if entity @s[tag=42.tag.portal.cube.weighted] positioned ~-.5 ~ ~-.5 as @e[tag=42.tag.portal.laser.beam,tag=!42.tag.portal.laser.beam.end,tag=!42.tag.portal.laser.beam.cube_watcher,dx=0] at @s run function 42:portal/laser/beam/fizzle_after

execute at @s positioned ~ ~.5 ~ run function 42:portal/generic/entity_col/test_1p
execute if entity @e[tag=42.tag.portal.grill.hit,scores={42.obj.portal.col=2}] run function 42:portal/cube/fizzle

#execute if entity @s[predicate=!42:on_ground,tag=!42.tag.portal.motion] store result score @s 42.obj.portal.var.y run data get entity @s Motion[1] 1000

scoreboard players set #42.var.portal.dummy 42.obj.portal.temp 0
function 42:portal/generic/in_world
execute if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run function 42:portal/cube/fizzle