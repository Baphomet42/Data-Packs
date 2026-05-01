scoreboard players set @e[tag=42.tag.portal.launch,limit=1,sort=nearest,distance=..5] 42.obj.portal.time 10
execute as @e[tag=42.tag.portal.launch.dis,limit=2,sort=nearest,distance=..5] run data merge entity @s {transformation:{left_rotation:{angle:-1.5f,axis:[1f,0f,0f]}},interpolation_duration:3,start_interpolation:-1}
playsound minecraft:block.piston.extend block @a ~ ~ ~ 2 1.25
function 42:portal/generic/motion/start_player
tag @e remove 42.tag.portal.temp
execute as @e[tag=42.tag.portal.launch,limit=1,sort=nearest,distance=..5] at @s run summon armor_stand ~ ~ ~ {Small:true,Invisible:true,Invulnerable:true,DisabledSlots:16191,Tags:["42.tag.summon","42.tag.portal.motion.tp","42.tag.portal.motion.tp_player","42.tag.portal.temp"]}
scoreboard players operation @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] 42.obj.portal.var.x = @e[tag=42.tag.portal.launch,limit=1,sort=nearest,distance=..5] 42.obj.portal.var.x
scoreboard players operation @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] 42.obj.portal.var.z = @e[tag=42.tag.portal.launch,limit=1,sort=nearest,distance=..5] 42.obj.portal.var.z
execute store result score @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] 42.obj.portal.id run data get entity @s UUID[0]
scoreboard players operation @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] 42.obj.portal.timestamp.used_portal = @s 42.obj.portal.timestamp.used_portal
scoreboard players set @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] 42.obj.portal.cool 0
execute as @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] run function 42:portal/generic/motion/start_effects

execute store result entity @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] Motion[0] double .001 run scoreboard players get @e[tag=42.tag.portal.launch,limit=1,sort=nearest,distance=..5] 42.obj.portal.var.x
execute store result entity @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] Motion[1] double .001 run scoreboard players get @e[tag=42.tag.portal.launch,limit=1,sort=nearest,distance=..5] 42.obj.portal.var.y
execute store result entity @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] Motion[2] double .001 run scoreboard players get @e[tag=42.tag.portal.launch,limit=1,sort=nearest,distance=..5] 42.obj.portal.var.z
tag @e remove 42.tag.portal.temp