tag @s add 42.tag.portal.temp.this

scoreboard players operation #42.var.portal.dummy 42.obj.portal.motion.x = @s 42.obj.portal.motion.x
scoreboard players operation #42.var.portal.dummy 42.obj.portal.motion.y = @s 42.obj.portal.motion.y
scoreboard players operation #42.var.portal.dummy 42.obj.portal.motion.z = @s 42.obj.portal.motion.z
scoreboard players operation #42.var.portal.dummy2 42.obj.portal.motion.x = @s 42.obj.portal.motion.x
scoreboard players operation #42.var.portal.dummy2 42.obj.portal.motion.y = @s 42.obj.portal.motion.y
scoreboard players operation #42.var.portal.dummy2 42.obj.portal.motion.z = @s 42.obj.portal.motion.z

scoreboard players remove #42.var.portal.dummy 42.obj.portal.motion.x 99
scoreboard players remove #42.var.portal.dummy 42.obj.portal.motion.y 99
scoreboard players remove #42.var.portal.dummy 42.obj.portal.motion.z 99
scoreboard players add #42.var.portal.dummy2 42.obj.portal.motion.x 99
scoreboard players add #42.var.portal.dummy2 42.obj.portal.motion.y 99
scoreboard players add #42.var.portal.dummy2 42.obj.portal.motion.z 99

execute as @e[tag=42.tag.portal.gel.droplet,tag=!42.tag.portal.temp.this,distance=..0.1] \
    if score @s 42.obj.portal.motion.x > #42.var.portal.dummy 42.obj.portal.motion.x \
    if score @s 42.obj.portal.motion.y > #42.var.portal.dummy 42.obj.portal.motion.y \
    if score @s 42.obj.portal.motion.z > #42.var.portal.dummy 42.obj.portal.motion.z \
    if score @s 42.obj.portal.motion.x < #42.var.portal.dummy2 42.obj.portal.motion.x \
    if score @s 42.obj.portal.motion.y < #42.var.portal.dummy2 42.obj.portal.motion.y \
    if score @s 42.obj.portal.motion.z < #42.var.portal.dummy2 42.obj.portal.motion.z \
    run function 42:portal/gel/fizzle

tag @s remove 42.tag.portal.temp.this