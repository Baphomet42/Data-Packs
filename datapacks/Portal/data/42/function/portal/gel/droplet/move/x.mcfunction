execute if score #42.var.portal.dummy 42.obj.portal.temp matches ..-1 run tp @s ~-.1 ~ ~
execute if score #42.var.portal.dummy 42.obj.portal.temp matches 1.. run tp @s ~.1 ~ ~

execute if score #42.var.portal.dummy 42.obj.portal.temp matches ..-1 run scoreboard players add #42.var.portal.dummy 42.obj.portal.temp 100
execute if score #42.var.portal.dummy 42.obj.portal.temp matches 1.. run scoreboard players remove #42.var.portal.dummy 42.obj.portal.temp 100

execute at @s if block ~ ~ ~ #42:portal/portal_bullet_pass unless score #42.var.portal.dummy 42.obj.portal.temp matches -99..99 run function 42:portal/gel/droplet/move/x