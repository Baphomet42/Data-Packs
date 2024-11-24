tag @s add 42.tag.portal.pellet.on
scoreboard players set @s 42.obj.portal.time -1
tp @s ~ ~ ~
execute as @e[tag=42.tag.portal.pellet.catcher,tag=!42.tag.portal.pellet.catcher.on,limit=1,sort=nearest,distance=...2] at @s run function 42:portal/pellet/catcher/power