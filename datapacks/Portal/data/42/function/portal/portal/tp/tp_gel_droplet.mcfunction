execute at @e[tag=42.tag.portal.portal.tp2] rotated as @e[tag=42.tag.portal.portal.tp2] positioned ^ ^.5 ^1 run tp @s ~ ~ ~ ~ ~

scoreboard players set @s 42.obj.portal.time 0

execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=0}] run function 42:portal/portal/motrot/in/s
execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=1}] run function 42:portal/portal/motrot/in/w
execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=2}] run function 42:portal/portal/motrot/in/n
execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=3}] run function 42:portal/portal/motrot/in/e
execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=-2}] run function 42:portal/portal/motrot/in/f
execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=2}] run function 42:portal/portal/motrot/in/c

execute at @s rotated as @e[tag=42.tag.portal.portal.tp2] run function 42:portal/gel/droplet/randomize