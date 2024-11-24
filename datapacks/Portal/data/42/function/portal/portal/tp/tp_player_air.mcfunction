tag @s add 42.tag.portal.motion
tag @e remove 42.tag.portal.temp
execute as @e[tag=42.tag.portal.portal.tp2,limit=1] at @s positioned ^ ^-.5 ^1 run summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:16191,Tags:["42.tag.portal.motion.tp","42.tag.portal.motion.tp_player","42.tag.portal.temp"]}
scoreboard players set @e[type=!player,tag=42.tag.portal.temp] 42.obj.datapack 3
execute store result score @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] 42.obj.portal.var.x run data get entity @s Motion[0] 1000
scoreboard players operation @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] 42.obj.portal.var.y = @s 42.obj.portal.var.y
execute store result score @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] 42.obj.portal.var.z run data get entity @s Motion[2] 1000
execute store result score @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] 42.obj.portal.id run data get entity @s UUID[0]
scoreboard players set @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] 42.obj.portal.cool 0
execute store result entity @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] Motion[0] double 1 run data get entity @s Motion[0]
#execute store result entity @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] Motion[1] double 1 run data get entity @s Motion[1]
execute store result entity @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] Motion[1] double .001 run scoreboard players get @s 42.obj.portal.var.y
execute store result entity @e[tag=42.tag.portal.motion.tp,tag=42.tag.portal.temp,limit=1] Motion[2] double 1 run data get entity @s Motion[2]
ride @s mount @e[tag=42.tag.portal.temp,limit=1]
function 42:portal/player/schedule_actionbar
execute as @e[tag=42.tag.portal.temp] at @s run function 42:portal/portal/tp/tp_motion
tag @e remove 42.tag.portal.temp