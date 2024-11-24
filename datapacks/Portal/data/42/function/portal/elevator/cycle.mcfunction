tag @s remove 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.elevator.off] run tag @s add 42.tag.portal.temp
tag @s add 42.tag.portal.elevator.off
execute if entity @s[tag=42.tag.portal.temp] run tag @s remove 42.tag.portal.elevator.off
tag @s remove 42.tag.portal.temp

particle flash
execute positioned ~ ~.5 ~ run function 42:portal/tools/notif
execute if entity @s[tag=!42.tag.portal.elevator.off] run data merge entity @e[tag=42.tag.portal.notif,limit=1,sort=nearest] {CustomName:'"Exit Only: Off"'}
execute if entity @s[tag=42.tag.portal.elevator.off] run data merge entity @e[tag=42.tag.portal.notif,limit=1,sort=nearest] {CustomName:'"Exit Only: On"'}