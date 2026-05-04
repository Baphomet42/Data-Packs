scoreboard players set @e[tag=42.tag.portal.launch,limit=1,sort=nearest,distance=..5] 42.obj.portal.time 10
execute as @e[tag=42.tag.portal.launch.dis,limit=2,sort=nearest,distance=..5] run data merge entity @s {transformation:{left_rotation:{angle:-1.5f,axis:[1f,0f,0f]}},interpolation_duration:3,start_interpolation:-1}
playsound minecraft:block.piston.extend block @a ~ ~ ~ 2 1.25
tp @s ~ ~ ~
execute at @s run tp @s @s

scoreboard players operation @s 42.obj.portal.pmotion.x = @e[tag=42.tag.portal.launch,limit=1,sort=nearest,distance=..5] 42.obj.portal.var.x
scoreboard players operation @s 42.obj.portal.pmotion.y = @e[tag=42.tag.portal.launch,limit=1,sort=nearest,distance=..5] 42.obj.portal.var.y
scoreboard players operation @s 42.obj.portal.pmotion.z = @e[tag=42.tag.portal.launch,limit=1,sort=nearest,distance=..5] 42.obj.portal.var.z
function 42:portal/generic/motion/pmotion/launch