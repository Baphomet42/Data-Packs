execute at @s positioned ^ ^ ^1 run function 42:portal/pellet/catcher/laser/valid
execute at @s[tag=42.portal_pellet_catcher_laser_valid] run tp ^ ^ ^1
execute at @s if block ~ ~ ~ #42:portal_blocks as @e[tag=42.portal,distance=..2,limit=1,sort=nearest] at @s run function 42:portal/pellet/catcher/laser/try_portal
scoreboard players remove @s 42.portal_time 1
execute if score @s[tag=42.portal_pellet_catcher_laser_valid] 42.portal_time matches 0.. at @s run function 42:portal/pellet/catcher/laser/move