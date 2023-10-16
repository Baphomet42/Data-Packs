tag @s remove 42.portal_temp
execute if entity @s[tag=42.portal_pellet_catcher_nolaser] run tag @s add 42.portal_temp
tag @s add 42.portal_pellet_catcher_nolaser
execute if entity @s[tag=42.portal_temp] run tag @s remove 42.portal_pellet_catcher_nolaser
particle flash
execute positioned ^ ^ ^1.5 positioned ~ ~-1 ~ run function 42:portal/tools/notif
execute if entity @s[tag=!42.portal_pellet_catcher_nolaser] run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Mode: Show Laser"}'}
execute if entity @s[tag=42.portal_pellet_catcher_nolaser] run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Mode: No Laser"}'}