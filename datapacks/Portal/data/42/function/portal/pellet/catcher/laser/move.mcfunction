execute at @s positioned ^ ^ ^1 run function 42:portal/pellet/catcher/laser/valid
execute at @s[tag=42.tag.portal.pellet.catcher.laser_valid] run tp ^ ^ ^1
execute at @s if block ~ ~ ~ #42:portal/portal_blocks as @e[tag=42.tag.portal.portal,distance=..2,limit=1,sort=nearest] at @s run function 42:portal/pellet/catcher/laser/try_portal
scoreboard players remove @s 42.obj.portal.time 1
execute if score @s[tag=42.tag.portal.pellet.catcher.laser_valid] 42.obj.portal.time matches 0.. at @s run function 42:portal/pellet/catcher/laser/move