scoreboard players remove @s 42.portal_temp 1

execute at @s run tp ^ ^ ^.1
execute at @s run function 42:portal/gun/find_col
execute at @s[tag=42.portal_gun_valid] run tp ^ ^ ^.1
execute at @s run function 42:portal/gun/find_col
execute at @s[tag=42.portal_gun_valid] run tp ^ ^ ^.1
execute at @s run function 42:portal/gun/find_col
execute at @s[tag=42.portal_gun_valid] run tp ^ ^ ^.1
execute at @s run function 42:portal/gun/find_col

execute at @s run function 42:portal/gun/particle
execute at @s[tag=42.portal_gun_valid] if score @s 42.portal_temp matches 1.. run function 42:portal/gun/find_loop