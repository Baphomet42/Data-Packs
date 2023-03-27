scoreboard players set @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_time 10
execute as @e[tag=42.portal_launch_dis,limit=2,sort=nearest,distance=..5] run data merge entity @s {transformation:{left_rotation:{angle:-1.5f,axis:[1f,0f,0f]}},interpolation_duration:3,start_interpolation:-1}
playsound minecraft:block.piston.extend block @a ~ ~ ~ 1.5 1.25
tag @e remove 42.portal_temp
execute as @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] at @s run summon armor_stand ~ ~ ~ {Small:1,Invisible:1,Invulnerable:1,DisabledSlots:16191,Tags:["42.portal_launch_tp","42.portal_temp"]}
scoreboard players operation @e[tag=42.portal_launch_tp,tag=42.portal_temp,limit=1] 42.portal_x = @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_x
scoreboard players operation @e[tag=42.portal_launch_tp,tag=42.portal_temp,limit=1] 42.portal_z = @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_z
execute store result score @e[tag=42.portal_launch_tp,tag=42.portal_temp,limit=1] 42.portal_id run data get entity @s UUID[0]
scoreboard players set @e[tag=42.portal_launch_tp,tag=42.portal_temp,limit=1] 42.portal_time 0
execute store result entity @e[tag=42.portal_launch_tp,tag=42.portal_temp,limit=1] Motion[0] double .001 run scoreboard players get @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_x
execute store result entity @e[tag=42.portal_launch_tp,tag=42.portal_temp,limit=1] Motion[1] double .001 run scoreboard players get @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_y
execute store result entity @e[tag=42.portal_launch_tp,tag=42.portal_temp,limit=1] Motion[2] double .001 run scoreboard players get @e[tag=42.portal_launch,limit=1,sort=nearest,distance=..5] 42.portal_z
tag @e remove 42.portal_temp