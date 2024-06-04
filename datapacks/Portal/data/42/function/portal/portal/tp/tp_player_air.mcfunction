tag @s add 42.portal_motion
tag @e remove 42.portal_temp
execute as @e[tag=42.portal_tp2,limit=1] at @s positioned ^ ^-.5 ^1 run summon armor_stand ~ ~ ~ {Small:1,Invisible:1,Invulnerable:1,DisabledSlots:16191,Tags:["42.portal_motion_tp","42.portal_temp"]}
scoreboard players set @e[type=!player,tag=42.portal_temp] 42.datapack 3
execute store result score @e[tag=42.portal_motion_tp,tag=42.portal_temp,limit=1] 42.portal_x run data get entity @s Motion[0] 1000
scoreboard players operation @e[tag=42.portal_motion_tp,tag=42.portal_temp,limit=1] 42.portal_y = @s 42.portal_y
execute store result score @e[tag=42.portal_motion_tp,tag=42.portal_temp,limit=1] 42.portal_z run data get entity @s Motion[2] 1000
execute store result score @e[tag=42.portal_motion_tp,tag=42.portal_temp,limit=1] 42.portal_id run data get entity @s UUID[0]
scoreboard players set @e[tag=42.portal_motion_tp,tag=42.portal_temp,limit=1] 42.portal_cool 0
execute store result entity @e[tag=42.portal_motion_tp,tag=42.portal_temp,limit=1] Motion[0] double 1 run data get entity @s Motion[0]
#execute store result entity @e[tag=42.portal_motion_tp,tag=42.portal_temp,limit=1] Motion[1] double 1 run data get entity @s Motion[1]
execute store result entity @e[tag=42.portal_motion_tp,tag=42.portal_temp,limit=1] Motion[1] double .001 run scoreboard players get @s 42.portal_y
execute store result entity @e[tag=42.portal_motion_tp,tag=42.portal_temp,limit=1] Motion[2] double 1 run data get entity @s Motion[2]
ride @s mount @e[tag=42.portal_temp,limit=1]
execute as @e[tag=42.portal_temp] at @s run function 42:portal/portal/tp/tp_motion
tag @e remove 42.portal_temp