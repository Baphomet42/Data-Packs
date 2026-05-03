tag @s add 42.tag.portal.temp.this

scoreboard players operation #42.var.portal.dummy 42.obj.portal.var.x = @s 42.obj.portal.var.x
scoreboard players operation #42.var.portal.dummy 42.obj.portal.var.y = @s 42.obj.portal.var.y
scoreboard players operation #42.var.portal.dummy 42.obj.portal.var.z = @s 42.obj.portal.var.z
scoreboard players operation #42.var.portal.dummy2 42.obj.portal.var.x = @s 42.obj.portal.var.x
scoreboard players operation #42.var.portal.dummy2 42.obj.portal.var.y = @s 42.obj.portal.var.y
scoreboard players operation #42.var.portal.dummy2 42.obj.portal.var.z = @s 42.obj.portal.var.z

scoreboard players remove #42.var.portal.dummy 42.obj.portal.var.x 99
scoreboard players remove #42.var.portal.dummy 42.obj.portal.var.y 99
scoreboard players remove #42.var.portal.dummy 42.obj.portal.var.z 99
scoreboard players add #42.var.portal.dummy2 42.obj.portal.var.x 99
scoreboard players add #42.var.portal.dummy2 42.obj.portal.var.y 99
scoreboard players add #42.var.portal.dummy2 42.obj.portal.var.z 99

execute as @e[tag=42.tag.portal.gel.droplet,tag=!42.tag.portal.temp.this,distance=..0.1] \
    if score @s 42.obj.portal.var.x > #42.var.portal.dummy 42.obj.portal.var.x \
    if score @s 42.obj.portal.var.y > #42.var.portal.dummy 42.obj.portal.var.y \
    if score @s 42.obj.portal.var.z > #42.var.portal.dummy 42.obj.portal.var.z \
    if score @s 42.obj.portal.var.x < #42.var.portal.dummy2 42.obj.portal.var.x \
    if score @s 42.obj.portal.var.y < #42.var.portal.dummy2 42.obj.portal.var.y \
    if score @s 42.obj.portal.var.z < #42.var.portal.dummy2 42.obj.portal.var.z \
    run function 42:portal/gel/fizzle

tag @s remove 42.tag.portal.temp.this