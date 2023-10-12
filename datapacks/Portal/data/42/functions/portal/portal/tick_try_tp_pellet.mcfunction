execute positioned ^ ^-.5 ^ run tag @e[tag=42.portal_pellet,tag=!42.portal_pellet_on,distance=...5] add 42.portal_tp
execute positioned ^ ^.5 ^ run tag @e[tag=42.portal_pellet,tag=!42.portal_pellet_on,distance=...5] add 42.portal_tp
execute positioned ^ ^1.5 ^ run tag @e[tag=42.portal_pellet,tag=!42.portal_pellet_on,distance=...5] add 42.portal_tp
execute as @e[tag=42.portal_tp,tag=42.portal_pellet] at @s unless block ~ ~ ~ #42:portal_blocks run tag @s remove 42.portal_tp