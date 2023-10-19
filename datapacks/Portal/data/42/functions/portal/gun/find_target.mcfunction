scoreboard players set @s 42.portal_temp 8
function 42:portal/gun/find_loop
execute at @s run function 42:portal/gun/find_col
execute at @s[tag=!42.portal_gun_valid] run function 42:portal/gun/valid
tag @s remove 42.portal_gun_valid
scoreboard players add @s 42.portal_time 1
execute if score @s 42.portal_time matches 60.. run kill @s