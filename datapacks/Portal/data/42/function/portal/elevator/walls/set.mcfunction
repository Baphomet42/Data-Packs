execute positioned ~ ~2 ~ as @e[tag=42.portal_id,tag=42.portal_elevator_wall,distance=3..] at @s run function 42:portal/elevator/walls/reset
#
tag @e remove 42.portal_new_spawn
execute positioned ~ ~ ~ align xyz positioned ~.5 ~.5 ~.5 unless entity @e[tag=42.portal_id,tag=42.portal_elevator_wall,distance=...25] run summon marker ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_elevator_wall"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}'}
execute positioned ~ ~1 ~ align xyz positioned ~.5 ~.5 ~.5 unless entity @e[tag=42.portal_id,tag=42.portal_elevator_wall,distance=...25] run summon marker ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_elevator_wall"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}'}
execute positioned ~ ~2 ~ align xyz positioned ~.5 ~.5 ~.5 unless entity @e[tag=42.portal_id,tag=42.portal_elevator_wall,distance=...25] run summon marker ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_elevator_wall"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}'}
execute positioned ~ ~3 ~ align xyz positioned ~.5 ~.5 ~.5 unless entity @e[tag=42.portal_id,tag=42.portal_elevator_wall,distance=...25] run summon marker ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_elevator_wall"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}'}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
scoreboard players operation @e[tag=42.portal_new_spawn] 42.portal_id = @s 42.portal_id
execute at @e[tag=42.portal_new_spawn] run fill ~-2 ~ ~-2 ~2 ~ ~2 barrier replace #42:portal_replace
execute at @e[tag=42.portal_new_spawn] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace barrier
function 42:portal/tag_id
tag @e remove 42.portal_new_spawn