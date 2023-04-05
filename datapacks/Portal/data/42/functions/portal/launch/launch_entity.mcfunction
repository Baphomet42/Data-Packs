scoreboard players set @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_time 10
execute as @e[tag=42.portal_launch_dis,limit=2,sort=nearest,distance=..5] run data merge entity @s {transformation:{left_rotation:{angle:-1.5f,axis:[1f,0f,0f]}},interpolation_duration:3,start_interpolation:-1}
playsound minecraft:block.piston.extend block @a ~ ~ ~ 2 1.25
tag @s add 42.portal_motion_tp
tp @s ~ ~ ~
scoreboard players operation @s 42.portal_x = @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_x
scoreboard players operation @s 42.portal_z = @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_z
scoreboard players set @s 42.portal_cool 0
execute store result entity @s Motion[0] double .001 run scoreboard players get @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_x
execute store result entity @s Motion[1] double .001 run scoreboard players get @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_y
execute store result entity @s Motion[2] double .001 run scoreboard players get @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_z