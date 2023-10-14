tag @s add 42.portal_turret_off
tag @s add 42.portal_turret_malfunction
scoreboard players set @s 42.portal_w 90
execute if entity @s[tag=!42.portal_turret_open] run function 42:portal/cube/turret/arms/open