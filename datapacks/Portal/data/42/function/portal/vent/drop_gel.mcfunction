tag @e remove 42.tag.portal.vent.drop
tag @s add 42.tag.portal.vent.drop
function 42:portal/gel/droplet/spawn
scoreboard players operation @e[tag=!42.tag.portal.vent,tag=42.tag.portal.vent.drop,distance=..10,limit=1] 42.obj.portal.id = @s 42.obj.portal.id
scoreboard players operation @e[tag=!42.tag.portal.vent,tag=42.tag.portal.vent.drop,distance=..10,limit=1] 42.obj.portal.lvl = @s 42.obj.portal.lvl

execute as @e[tag=!42.tag.portal.vent,tag=42.tag.portal.vent.drop,distance=..10,limit=1] store result score @s 42.obj.portal.var.y run random value -500..0
execute as @e[tag=!42.tag.portal.vent,tag=42.tag.portal.vent.drop,distance=..10,limit=1] at @s rotated 0 90 run function 42:portal/gel/droplet/randomize

tag @e remove 42.tag.portal.vent.drop