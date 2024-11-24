tag @e remove 42.tag.xltt.temp_spawn

summon vindicator ~ ~ ~ {Tags:["42.tag.xltt.titan","42.tag.xltt.titan.group","42.tag.xltt.temp_spawn"],PersistenceRequired:1b,DeathLootTable:"42:empty",Invulnerable:1b,attributes:[{id:"minecraft:follow_range",base:128d},{id:"minecraft:movement_speed",base:.42d},{id:"minecraft:attack_damage",base:45d}]}
summon item_display ~ ~8 ~ {Tags:["42.tag.xltt.titan.hit_tp","42.tag.xltt.titan.group","42.tag.xltt.temp_spawn"],view_range:0f,teleport_duration:2,Passengers:[{id:interaction,Tags:["42.tag.xltt.titan.hit","42.tag.xltt.titan.group","42.tag.xltt.temp_spawn"],width:3.5,height:1.5}]}

attribute @e[tag=42.tag.xltt.temp_spawn,tag=42.tag.xltt.titan,limit=1] scale base set 6

scoreboard players set @e[tag=42.tag.xltt.temp_spawn] 42.obj.datapack 1
execute as @e[tag=42.tag.xltt.temp_spawn,tag=42.tag.xltt.titan,limit=1] run function 42:xltt/id
scoreboard players operation @e[tag=42.tag.xltt.temp_spawn,tag=!42.tag.xltt.titan] 42.obj.xltt.id = @e[tag=42.tag.xltt.temp_spawn,tag=42.tag.xltt.titan,limit=1] 42.obj.xltt.id
execute as @e[tag=42.tag.xltt.temp_spawn,tag=42.tag.xltt.titan,limit=1] store result score @s 42.obj.xltt.titan_time run random value 0..4

execute if entity @e[tag=42.tag.xltt.titan.spawn_effect,distance=...5] run effect give @e[tag=42.tag.xltt.temp_spawn,tag=42.tag.xltt.titan,limit=1] slowness 3 100 true
execute if entity @e[tag=42.tag.xltt.titan.spawn_effect,distance=...5] run effect give @e[tag=42.tag.xltt.temp_spawn,tag=42.tag.xltt.titan,limit=1] slow_falling 2 100 true

tag @e remove 42.tag.xltt.temp_spawn