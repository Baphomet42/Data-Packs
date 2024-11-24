execute positioned ^ ^-.5 ^ run tag @e[tag=42.tag.portal.pellet.catcher.laser,distance=...25] add 42.tag.portal.portal.tp
execute positioned ^ ^.5 ^ run tag @e[tag=42.tag.portal.pellet.catcher.laser,distance=...25] add 42.tag.portal.portal.tp
execute positioned ^ ^1.5 ^ run tag @e[tag=42.tag.portal.pellet.catcher.laser,distance=...25] add 42.tag.portal.portal.tp

execute positioned ^-1 ^-.5 ^ run tag @e[tag=42.tag.portal.pellet.catcher.laser,distance=...25] remove 42.tag.portal.pellet.catcher.laser_valid
execute positioned ^-1 ^.5 ^ run tag @e[tag=42.tag.portal.pellet.catcher.laser,distance=...25] remove 42.tag.portal.pellet.catcher.laser_valid
execute positioned ^-1 ^1.5 ^ run tag @e[tag=42.tag.portal.pellet.catcher.laser,distance=...25] remove 42.tag.portal.pellet.catcher.laser_valid
execute positioned ^1 ^-.5 ^ run tag @e[tag=42.tag.portal.pellet.catcher.laser,distance=...25] remove 42.tag.portal.pellet.catcher.laser_valid
execute positioned ^1 ^.5 ^ run tag @e[tag=42.tag.portal.pellet.catcher.laser,distance=...25] remove 42.tag.portal.pellet.catcher.laser_valid
execute positioned ^1 ^1.5 ^ run tag @e[tag=42.tag.portal.pellet.catcher.laser,distance=...25] remove 42.tag.portal.pellet.catcher.laser_valid
execute as @e[tag=42.tag.portal.pellet.catcher.laser,limit=1,sort=nearest,tag=!42.tag.portal.pellet.catcher.laser_valid] at @s run tp @s ^ ^ ^-1