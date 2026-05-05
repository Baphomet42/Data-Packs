tag @a remove 42.tag.portal.in_zone
tag @e remove 42.tag.portal.zone.this
tag @s add 42.tag.portal.zone.this
execute if score @s 42.obj.portal.var.y matches 0 positioned ~-.5 ~ ~-.5 as @a[gamemode=!spectator,dx=0,dy=0,dz=0] run tag @s add 42.tag.portal.in_zone
execute if score @s 42.obj.portal.var.y matches 1 positioned ~-1.5 ~ ~-1.5 as @a[gamemode=!spectator,dx=2,dy=2,dz=2] run tag @s add 42.tag.portal.in_zone
execute if score @s 42.obj.portal.var.y matches 2 positioned ~-2.5 ~ ~-2.5 as @a[gamemode=!spectator,dx=4,dy=4,dz=4] run tag @s add 42.tag.portal.in_zone
execute if score @s 42.obj.portal.var.x matches 0 if score @s 42.obj.portal.lvl matches 1.. run function 42:portal/zone/mode/load/tick
execute if score @s 42.obj.portal.var.x matches 1 if score @s 42.obj.portal.lvl matches 1.. run function 42:portal/zone/mode/trigger/tick
tag @s remove 42.tag.portal.zone.this
tag @a remove 42.tag.portal.in_zone