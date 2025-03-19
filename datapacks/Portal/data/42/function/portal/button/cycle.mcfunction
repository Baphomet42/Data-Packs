function 42:portal/button/cycle_silent
particle flash
execute positioned ~ ~.25 ~ run function 42:portal/tools/notif
execute if entity @s[tag=!42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.notif,limit=1,sort=nearest] {CustomName:"Button Type: Normal"}
execute if entity @s[tag=42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.notif,limit=1,sort=nearest] {CustomName:"Button Type: Cube"}