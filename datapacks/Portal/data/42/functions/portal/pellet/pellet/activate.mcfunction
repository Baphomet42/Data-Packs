tag @s add 42.portal_pellet_on
scoreboard players set @s 42.portal_time -1
tp @s ~ ~ ~
execute as @e[tag=42.portal_pellet_catcher,tag=!42.portal_pellet_catcher_on,limit=1,sort=nearest,distance=...2] at @s run function 42:portal/pellet/catcher/power