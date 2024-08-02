#effect give @s levitation 1 255 true
function 42:xltt/tag_id
execute positioned as @e[tag=42.odm_marker,tag=42.xltt_id] rotated as @s run tp ~ ~ ~
execute store result entity @e[tag=42.odm_marker,tag=42.xltt_id,limit=1] Motion[0] double .075 run scoreboard players get @e[tag=42.odm_marker,tag=42.xltt_id,limit=1] 42.xltt_odm_x
execute store result entity @e[tag=42.odm_marker,tag=42.xltt_id,limit=1] Motion[2] double .075 run scoreboard players get @e[tag=42.odm_marker,tag=42.xltt_id,limit=1] 42.xltt_odm_z
#ride @s mount @e[tag=42.odm_marker,tag=42.xltt_id,limit=1]
execute as @e[tag=42.odm_marker,tag=42.xltt_id,nbt={OnGround:1b}] run kill @s
execute if entity @s[nbt={abilities:{flying:1b}}] as @e[tag=42.odm_marker,tag=42.xltt_id] run kill @s
execute unless entity @e[tag=42.odm_marker,tag=42.xltt_id] run function 42:xltt/odm/full_stop
execute store result score @e[tag=42.odm_marker,tag=42.xltt_id,limit=1] 42.xltt_odm_y run data get entity @e[tag=42.odm_marker,tag=42.xltt_id,limit=1] Motion[1] 1000
execute if entity @e[tag=42.odm_marker,tag=42.xltt_id,scores={42.xltt_odm_y=0..}] run effect give @s slow_falling 1 0 true
scoreboard players set @s[scores={42.xltt_odm_time=30..}] 42.xltt_odm_time 0
scoreboard players add @s 42.xltt_odm_time 1
execute at @s[scores={42.xltt_odm_time=1}] run playsound item.elytra.flying player @s ~ ~ ~ .5 2
execute unless entity @e[tag=42.odm_marker,tag=42.xltt_id] run stopsound @s player item.elytra.flying
execute unless entity @e[tag=42.odm_marker,tag=42.xltt_id] run scoreboard players set @s 42.xltt_odm_time 0
tag @e remove 42.xltt_id