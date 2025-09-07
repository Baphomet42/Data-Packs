function 42:xltt/match_id
execute positioned as @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id] rotated as @s run tp ~ ~ ~
execute store result entity @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id,limit=1] Motion[0] double .075 run scoreboard players get @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id,limit=1] 42.obj.xltt.odm_x
execute store result entity @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id,limit=1] Motion[2] double .075 run scoreboard players get @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id,limit=1] 42.obj.xltt.odm_z
#ride @s mount @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id,limit=1]
execute as @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id,nbt={OnGround:true}] run kill @s
execute if entity @s[nbt={abilities:{flying:true}}] as @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id] run kill @s
execute unless entity @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id] run function 42:xltt/odm/full_stop
execute store result score @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id,limit=1] 42.obj.xltt.odm_y run data get entity @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id,limit=1] Motion[1] 1000
execute if entity @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id,scores={42.obj.xltt.odm_y=0..}] run effect give @s slow_falling 1 0 true
scoreboard players set @s[scores={42.obj.xltt.odm_time=30..}] 42.obj.xltt.odm_time 0
scoreboard players add @s 42.obj.xltt.odm_time 1
execute at @s[scores={42.obj.xltt.odm_time=1}] run playsound item.elytra.flying player @s ~ ~ ~ .5 2
execute unless entity @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id] run stopsound @s player item.elytra.flying
execute unless entity @e[tag=42.tag.xltt.odm.marker,predicate=42:xltt/match_id] run scoreboard players set @s 42.obj.xltt.odm_time 0