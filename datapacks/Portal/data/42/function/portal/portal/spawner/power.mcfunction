function 42:portal/portal/spawner/unpower
scoreboard players operation 42.portal_temp 42.portal_skin = @s 42.portal_x
scoreboard players operation 42.portal_temp 42.portal_link = @s 42.portal_y
execute store result score 42.portal_temp 42.portal_id run data get entity @p[gamemode=!spectator] UUID[0]
execute if entity @s[x_rotation=0] positioned ^ ^.5 ^ rotated ~180 ~ run function 42:portal/gun/use
execute if entity @s[x_rotation=-90] positioned ^ ^.5 ^ rotated ~180 90 run function 42:portal/gun/use
execute if entity @s[x_rotation=90] positioned ^ ^.5 ^ rotated ~180 -90 run function 42:portal/gun/use