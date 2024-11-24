function 42:portal/pellet/catcher/cycle_silent
particle flash
execute positioned ^ ^ ^1.5 positioned ~ ~-1 ~ run function 42:portal/tools/notif
execute if entity @s[tag=!42.tag.portal.pellet.catcher.nolaser] run data merge entity @e[tag=42.tag.portal.notif,limit=1,sort=nearest] {CustomName:'"Mode: Show Laser"'}
execute if entity @s[tag=42.tag.portal.pellet.catcher.nolaser] run data merge entity @e[tag=42.tag.portal.notif,limit=1,sort=nearest] {CustomName:'"Mode: No Laser"'}