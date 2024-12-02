scoreboard players remove @s 42.obj.portal.temp 1

execute at @s run tp ^ ^ ^.1
execute at @s run function 42:portal/gun/find_col
execute at @s[tag=42.tag.portal.gun.valid] run tp ^ ^ ^.1
execute at @s[tag=42.tag.portal.gun.valid] run function 42:portal/gun/find_col
execute at @s[tag=42.tag.portal.gun.valid] run tp ^ ^ ^.1
execute at @s[tag=42.tag.portal.gun.valid] run function 42:portal/gun/find_col
execute at @s[tag=42.tag.portal.gun.valid] run tp ^ ^ ^.1
execute at @s[tag=42.tag.portal.gun.valid] run function 42:portal/gun/find_col
execute at @s[tag=42.tag.portal.gun.valid] run tp ^ ^ ^.1
execute at @s[tag=42.tag.portal.gun.valid] run function 42:portal/gun/find_col

execute at @s run function 42:portal/gun/particle
execute at @s[tag=42.tag.portal.gun.valid] if score @s 42.obj.portal.temp matches 1.. run function 42:portal/gun/find_loop