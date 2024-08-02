tag @e remove 42.xltt_temp_spawn

summon vindicator ~ ~ ~ {Tags:["42.xltt_titan","42.xltt_titan_group","42.xltt_temp_spawn"],Johnny:1b,PersistenceRequired:1b,DeathLootTable:"empty",Invulnerable:1b,attributes:[{id:"minecraft:generic.follow_range",base:128d},{id:"minecraft:generic.movement_speed",base:.42d},{id:"minecraft:generic.attack_damage",base:45d}]}
summon armor_stand ~ ~8 ~ {Tags:["42.xltt_titan_hit_tp","42.xltt_titan_group","42.xltt_temp_spawn"],Invisible:1,Marker:1,Small:1,Passengers:[{id:interaction,Tags:["42.xltt_titan_hit","42.xltt_titan_group","42.xltt_temp_spawn"],width:3.5,height:1.5}]}

attribute @e[tag=42.xltt_temp_spawn,tag=42.xltt_titan,limit=1] generic.scale base set 6

scoreboard players set @e[tag=42.xltt_temp_spawn] 42.datapack 1
execute as @e[tag=42.xltt_temp_spawn,tag=42.xltt_titan,limit=1] run function 42:xltt/id
scoreboard players operation @e[tag=42.xltt_temp_spawn,tag=!42.xltt_titan] 42.xltt_id = @e[tag=42.xltt_temp_spawn,tag=42.xltt_titan,limit=1] 42.xltt_id
execute as @e[tag=42.xltt_temp_spawn,tag=42.xltt_titan,limit=1] store result score @s 42.xltt_titan_time run random value 0..4

execute if entity @e[tag=42.xltt_spawn_titan_effect,distance=...5] run effect give @e[tag=42.xltt_temp_spawn,tag=42.xltt_titan,limit=1] slowness 3 100 true
execute if entity @e[tag=42.xltt_spawn_titan_effect,distance=...5] run effect give @e[tag=42.xltt_temp_spawn,tag=42.xltt_titan,limit=1] slow_falling 2 100 true

tag @e remove 42.xltt_temp_spawn