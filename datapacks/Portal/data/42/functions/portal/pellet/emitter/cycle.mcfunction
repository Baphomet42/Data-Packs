function 42:portal/pellet/emitter/cycle_silent
particle flash
execute positioned ^ ^ ^1.5 positioned ~ ~-1 ~ run function 42:portal/tools/notif
execute if entity @s[tag=!42.portal_spawn_super_pellet] run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Pellet Type: Normal"}'}
execute if entity @s[tag=42.portal_spawn_super_pellet] run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Pellet Type: Super Pellet"}'}