function 42:portal/dropper/cycle_silent
particle flash
execute positioned ~ ~-3.5 ~ run function 42:portal/tools/notif
execute if score @s 42.obj.portal.var.x matches 1 positioned ~ ~-3.5 ~ run data merge entity @e[tag=42.tag.portal.notif,limit=1,sort=nearest] {CustomName:"Vent Drop Type: Storage Cube"}
execute if score @s 42.obj.portal.var.x matches 2 positioned ~ ~-3.5 ~ run data merge entity @e[tag=42.tag.portal.notif,limit=1,sort=nearest] {CustomName:"Vent Drop Type: Companion Cube"}
execute if score @s 42.obj.portal.var.x matches 3 positioned ~ ~-3.5 ~ run data merge entity @e[tag=42.tag.portal.notif,limit=1,sort=nearest] {CustomName:"Vent Drop Type: Redirection Cube"}
execute if score @s 42.obj.portal.var.x matches 4 positioned ~ ~-3.5 ~ run data merge entity @e[tag=42.tag.portal.notif,limit=1,sort=nearest] {CustomName:"Vent Drop Type: Old Storage Cube"}