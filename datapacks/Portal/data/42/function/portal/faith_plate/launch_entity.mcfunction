scoreboard players set @e[tag=42.tag.portal.faith_plate,limit=1,sort=nearest,distance=..5] 42.obj.portal.time 10
execute as @e[tag=42.tag.portal.faith_plate.dis,limit=2,sort=nearest,distance=..5] run data merge entity @s {transformation:{left_rotation:{angle:-1.5f,axis:[1f,0f,0f]}},interpolation_duration:3,start_interpolation:-1}
playsound minecraft:block.piston.extend block @a ~ ~ ~ 2 1.25
tp @s ~ ~ ~
execute at @s run tp @s @s

function 42:portal/generic/motion/start
scoreboard players operation @s 42.obj.portal.motion.x = @e[tag=42.tag.portal.faith_plate,limit=1,sort=nearest,distance=..5] 42.obj.portal.var.x
scoreboard players operation @s 42.obj.portal.motion.y = @e[tag=42.tag.portal.faith_plate,limit=1,sort=nearest,distance=..5] 42.obj.portal.var.y
scoreboard players operation @s 42.obj.portal.motion.z = @e[tag=42.tag.portal.faith_plate,limit=1,sort=nearest,distance=..5] 42.obj.portal.var.z
execute store result entity @s Motion[0] double .001 run scoreboard players get @s 42.obj.portal.motion.x
execute store result entity @s Motion[1] double .001 run scoreboard players get @s 42.obj.portal.motion.y
execute store result entity @s Motion[2] double .001 run scoreboard players get @s 42.obj.portal.motion.z