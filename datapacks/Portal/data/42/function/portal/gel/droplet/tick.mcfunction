scoreboard players add @s 42.obj.portal.time 1
execute if score @s 42.obj.portal.time matches 200.. run return run function 42:portal/gel/droplet/fizzle

scoreboard players remove @s 42.obj.portal.var.y 30

scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.var.x
execute at @s if block ~ ~ ~ #42:portal/portal_bullet_pass unless score #42.var.portal.dummy 42.obj.portal.temp matches -99..99 run function 42:portal/gel/droplet/move/x
scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.var.y
execute at @s if block ~ ~ ~ #42:portal/portal_bullet_pass unless score #42.var.portal.dummy 42.obj.portal.temp matches -99..99 run function 42:portal/gel/droplet/move/y
scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.var.z
execute at @s if block ~ ~ ~ #42:portal/portal_bullet_pass unless score #42.var.portal.dummy 42.obj.portal.temp matches -99..99 run function 42:portal/gel/droplet/move/z

