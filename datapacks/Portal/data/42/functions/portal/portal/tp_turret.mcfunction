tag @s remove 42.portal_temp
execute unless score @e[tag=42.portal_tp1,limit=1] 42.portal_y matches 0 run tag @s add 42.portal_temp
execute unless score @e[tag=42.portal_tp2,limit=1] 42.portal_y matches 0 run tag @s add 42.portal_temp
execute if entity @s[tag=42.portal_temp,tag=!42.portal_turret_off,tag=!42.portal_turret_malfunction] run function 42:portal/cube/turret/malfunction
execute if entity @s[tag=42.portal_temp] run function 42:portal/cube/turret/fall
tag @s remove 42.portal_temp