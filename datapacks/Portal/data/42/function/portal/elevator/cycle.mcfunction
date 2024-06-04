tag @s remove 42.portal_temp
execute if entity @s[tag=42.portal_elevator_off] run tag @s add 42.portal_temp
tag @s add 42.portal_elevator_off
execute if entity @s[tag=42.portal_temp] run tag @s remove 42.portal_elevator_off
tag @s remove 42.portal_temp
#
particle flash
execute positioned ~ ~.5 ~ run function 42:portal/tools/notif
execute if entity @s[tag=!42.portal_elevator_off] run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Exit Only: Off"}'}
execute if entity @s[tag=42.portal_elevator_off] run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Exit Only: On"}'}