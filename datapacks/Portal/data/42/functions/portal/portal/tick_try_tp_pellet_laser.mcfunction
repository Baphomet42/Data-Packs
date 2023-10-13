execute positioned ^ ^-.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...5] add 42.portal_tp
execute positioned ^ ^.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...5] add 42.portal_tp
execute positioned ^ ^1.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...5] add 42.portal_tp
execute as @e[tag=42.portal_tp,tag=42.portal_pellet_catcher_laser] at @s unless block ~ ~ ~ #42:portal_blocks run tag @s remove 42.portal_tp