function 42:portal/dropper/cycle_silent
particle flash
execute positioned ~ ~-3.5 ~ run function 42:portal/tools/notif
execute if score @s 42.portal_x matches 1 positioned ~ ~-3.5 ~ run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Vent Drop Type: Storage Cube"}'}
execute if score @s 42.portal_x matches 2 positioned ~ ~-3.5 ~ run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Vent Drop Type: Companion Cube"}'}
execute if score @s 42.portal_x matches 3 positioned ~ ~-3.5 ~ run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Vent Drop Type: Redirection Cube"}'}
execute if score @s 42.portal_x matches 4 positioned ~ ~-3.5 ~ run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Vent Drop Type: Old Storage Cube"}'}