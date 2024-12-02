scoreboard players set @s 42.obj.portal.temp 8
function 42:portal/gun/find_loop
execute at @s[tag=!42.tag.portal.gun.valid,tag=!42.tag.portal.gun.killed] run function 42:portal/gun/valid
tag @s remove 42.tag.portal.gun.valid
scoreboard players add @s 42.obj.portal.time 1
execute if score @s 42.obj.portal.time matches 60.. run kill @s