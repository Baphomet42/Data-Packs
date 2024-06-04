tag @e remove 42.xltt_temp_spawn
summon ravager ~ ~ ~ {Tags:["42.titan","42.titanAI","42.titan_new","42.xltt_temp_spawn"],CustomName:'{"text":"Titan"}',PersistenceRequired:1,DeathLootTable:empty,Invulnerable:1,active_effects:[{id:"invisibility",duration:-1,amplifier:5b,show_particles:0b}],attributes:[{id:"minecraft:generic.follow_range",base:128d}]}
summon giant ~ ~ ~ {Tags:["42.titan","42.titanBody","42.titan_newGiant","42.xltt_temp_spawn"],PersistenceRequired:1,DeathLootTable:empty,NoAI:1,Invulnerable:1}
summon interaction ~ ~8 ~ {Tags:["42.titan","42.titanHit","42.titan_newHit","42.xltt_temp_spawn"],width:3.5,height:1.5}
scoreboard players set @e[tag=42.xltt_temp_spawn] 42.datapack 1
tag @e remove 42.xltt_temp_spawn
team join titanCol @e[tag=42.titan_newGiant]
team join titanCol @e[tag=42.titan_newHit]
execute as @e[tag=42.titan_new] store result score @s 42.titan_id run data get entity @e[tag=42.titan_new,limit=1] UUID[0] 1
execute as @e[tag=42.titan_new] store result score @e[tag=42.titan_newGiant] 42.titan_id run data get entity @e[tag=42.titan_new,limit=1] UUID[0] 1
execute as @e[tag=42.titan_new] store result score @e[tag=42.titan_newHit] 42.titan_id run data get entity @e[tag=42.titan_new,limit=1] UUID[0] 1
execute as @e[tag=42.titan_new] at @s if entity @e[tag=42.xltt_spawn_titan_effect,distance=...25] run effect give @s slowness 3 100 true
execute as @e[tag=42.titan_new] at @s if entity @e[tag=42.xltt_spawn_titan_effect,distance=...25] run effect give @s slow_falling 2 100 true
tag @e remove 42.titan_new
tag @e remove 42.titan_newGiant
tag @e remove 42.titan_newHit
scoreboard players add @e[tag=42.titanAI,limit=1,sort=random] 42.titan_time 1
scoreboard players add @e[tag=42.titanAI,limit=2,sort=random] 42.titan_time 1
scoreboard players add @e[tag=42.titanAI,limit=3,sort=random] 42.titan_time 1
scoreboard players add @e[tag=42.titanAI,limit=4,sort=random] 42.titan_time 1
scoreboard players add @e[tag=42.titanAI,limit=5,sort=random] 42.titan_time 1