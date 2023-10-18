tag @s remove 42.portal_temp
execute if score @s 42.portal_x matches 1 if block ~ ~ ~-1 #42:portal_replace if block ~ ~1 ~-1 #42:portal_replace if block ~ ~2 ~-1 #42:portal_replace if block ~ ~ ~1 #42:portal_replace if block ~ ~1 ~1 #42:portal_replace if block ~ ~2 ~1 #42:portal_replace run tag @s add 42.portal_temp
execute if score @s 42.portal_x matches 2 if block ~-1 ~ ~ #42:portal_replace if block ~-1 ~1 ~ #42:portal_replace if block ~-1 ~2 ~ #42:portal_replace if block ~1 ~ ~ #42:portal_replace if block ~1 ~1 ~ #42:portal_replace if block ~1 ~2 ~ #42:portal_replace run tag @s add 42.portal_temp
execute if entity @s[tag=!42.portal_temp] if score @s 42.portal_x matches 1 positioned ~ ~ ~-1 run function 42:portal/generic/find_all {dx:0,dy:2,dz:0,mode:unless,block:"'#42:portal_replace'"}
execute if entity @s[tag=!42.portal_temp] if score @s 42.portal_x matches 1 positioned ~ ~ ~1 run function 42:portal/generic/find_all {dx:0,dy:2,dz:0,mode:unless,block:"'#42:portal_replace'"}
execute if entity @s[tag=!42.portal_temp] if score @s 42.portal_x matches 2 positioned ~-1 ~ ~ run function 42:portal/generic/find_all {dx:0,dy:2,dz:0,mode:unless,block:"'#42:portal_replace'"}
execute if entity @s[tag=!42.portal_temp] if score @s 42.portal_x matches 2 positioned ~1 ~ ~ run function 42:portal/generic/find_all {dx:0,dy:2,dz:0,mode:unless,block:"'#42:portal_replace'"}
execute if entity @s[tag=42.portal_temp] run function 42:portal/door/rotate2
tag @s remove 42.portal_temp