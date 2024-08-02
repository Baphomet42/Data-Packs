execute positioned ^ ^-.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...25] add 42.portal_tp
execute positioned ^ ^.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...25] add 42.portal_tp
execute positioned ^ ^1.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...25] add 42.portal_tp

execute positioned ^-1 ^-.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...25] remove 42.portal_pellet_catcher_laser_valid
execute positioned ^-1 ^.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...25] remove 42.portal_pellet_catcher_laser_valid
execute positioned ^-1 ^1.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...25] remove 42.portal_pellet_catcher_laser_valid
execute positioned ^1 ^-.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...25] remove 42.portal_pellet_catcher_laser_valid
execute positioned ^1 ^.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...25] remove 42.portal_pellet_catcher_laser_valid
execute positioned ^1 ^1.5 ^ run tag @e[tag=42.portal_pellet_catcher_laser,distance=...25] remove 42.portal_pellet_catcher_laser_valid
execute as @e[tag=42.portal_pellet_catcher_laser,limit=1,sort=nearest,tag=!42.portal_pellet_catcher_laser_valid] at @s run tp @s ^ ^ ^-1