execute at @s if block ~ ~ ~ #42:portal_cube_pass run tp ^ ^ ^1
execute at @s if block ~ ~ ~ #42:portal_blocks as @e[tag=42.portal,distance=..2.5,limit=1,sort=nearest] at @s run function 42:portal/pellet/catcher/laser/try_portal
scoreboard players remove @s 42.portal_time 1
execute if score @s 42.portal_time matches 0.. at @s if block ~ ~ ~ #42:portal_cube_pass run function 42:portal/pellet/catcher/laser/move