function 42:portal/button/cycle_silent
particle flash
execute positioned ~ ~.25 ~ run function 42:portal/tools/notif
execute if entity @s[tag=!42.portal_btn_cube] run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Button Type: Normal"}'}
execute if entity @s[tag=42.portal_btn_cube] run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Button Type: Cube"}'}