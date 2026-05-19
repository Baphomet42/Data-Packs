function 42:portal/portal/spawner/unpower
scoreboard players operation #42.var.portal.gun_use_temp 42.obj.portal.skin = @s 42.obj.portal.var.x
scoreboard players operation #42.var.portal.gun_use_temp 42.obj.portal.link = @s 42.obj.portal.var.y
execute store result score #42.var.portal.gun_use_temp 42.obj.portal.id run data get entity @p[gamemode=!spectator] UUID[0]
execute if entity @s[x_rotation=0] positioned ^ ^.5 ^ rotated ~180 ~ run function 42:portal/gun/use
execute if entity @s[x_rotation=-90] positioned ^ ^.5 ^ rotated ~180 90 run function 42:portal/gun/use
execute if entity @s[x_rotation=90] positioned ^ ^.5 ^ rotated ~180 -90 run function 42:portal/gun/use
scoreboard players set @s 42.obj.portal.var.v -1
execute if score @s 42.obj.portal.var.u matches 1.. run scoreboard players operation @s 42.obj.portal.var.v = @s 42.obj.portal.cool