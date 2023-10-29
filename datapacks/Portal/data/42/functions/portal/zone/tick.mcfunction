tag @a remove 42.portal_in_zone
tag @e remove 42.portal_zone_this
tag @s add 42.portal_zone_this
execute if score @s 42.portal_y matches 0 positioned ~-.5 ~ ~-.5 as @a[gamemode=!spectator,dx=0,dy=0,dz=0] run tag @s add 42.portal_in_zone
execute if score @s 42.portal_y matches 1 positioned ~-1.5 ~ ~-1.5 as @a[gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add 42.portal_in_zone
execute if score @s 42.portal_y matches 2 positioned ~-2.5 ~ ~-2.5 as @a[gamemode=!spectator,dx=4,dy=4,dz=4] run tag @s add 42.portal_in_zone
execute if score @s 42.portal_x matches 0 run function 42:portal/zone/mode/load/tick
execute if score @s 42.portal_x matches 1 if score @s 42.portal_lvl matches 1.. run function 42:portal/zone/mode/trigger/tick
tag @s remove 42.portal_zone_this
tag @a remove 42.portal_in_zone