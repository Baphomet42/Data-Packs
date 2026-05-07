scoreboard players add @s 42.obj.portal.time 1
scoreboard players add @s 42.obj.portal.cool 1
execute if score @s 42.obj.portal.time matches 200.. run return run function 42:portal/gel/fizzle

scoreboard players remove @s 42.obj.portal.motion.y 30
execute if predicate 42:periodic_20 run function 42:portal/gel/droplet/cramming

scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.motion.x
execute at @s if block ~ ~ ~ #42:portal/portal_bullet_pass unless score #42.var.portal.dummy 42.obj.portal.temp matches -99..99 run function 42:portal/gel/droplet/move/x
scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.motion.y
execute at @s if block ~ ~ ~ #42:portal/portal_bullet_pass unless score #42.var.portal.dummy 42.obj.portal.temp matches -99..99 run function 42:portal/gel/droplet/move/y
scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.motion.z
execute at @s if block ~ ~ ~ #42:portal/portal_bullet_pass unless score #42.var.portal.dummy 42.obj.portal.temp matches -99..99 run function 42:portal/gel/droplet/move/z

tag @s add 42.tag.portal.temp.gel_hit_test
execute at @s positioned ~-.5 ~-.5 ~-.5 as @e[tag=42.tag.portal.cube.main,dx=0,dy=0,dz=0] run function 42:portal/gel/effect/cover
tag @s remove 42.tag.portal.temp.gel_hit_test

execute at @s if block ~ ~ ~ #42:portal/portal_bullet_pass run scoreboard players set @s 42.obj.portal.cool 0
execute at @s[scores={42.obj.portal.cool=3..}] run function 42:portal/gel/droplet/hit