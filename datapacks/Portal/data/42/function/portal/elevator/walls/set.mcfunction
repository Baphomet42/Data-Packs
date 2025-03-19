execute positioned ~ ~2 ~ as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.wall,distance=3..] at @s run function 42:portal/elevator/walls/reset

tag @e remove 42.tag.portal.new_spawn
execute positioned ~ ~ ~ align xyz positioned ~.5 ~.5 ~.5 unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.wall,distance=...25] run summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.elevator.wall"],CustomNameVisible:false,CustomName:"42portal"}
execute positioned ~ ~1 ~ align xyz positioned ~.5 ~.5 ~.5 unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.wall,distance=...25] run summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.elevator.wall"],CustomNameVisible:false,CustomName:"42portal"}
execute positioned ~ ~2 ~ align xyz positioned ~.5 ~.5 ~.5 unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.wall,distance=...25] run summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.elevator.wall"],CustomNameVisible:false,CustomName:"42portal"}
execute positioned ~ ~3 ~ align xyz positioned ~.5 ~.5 ~.5 unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.wall,distance=...25] run summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.elevator.wall"],CustomNameVisible:false,CustomName:"42portal"}
scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @s 42.obj.portal.id
execute at @e[tag=42.tag.portal.new_spawn] run fill ~-2 ~ ~-2 ~2 ~ ~2 barrier replace #42:portal/portal_replace
execute at @e[tag=42.tag.portal.new_spawn] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace barrier
function 42:portal/tag_id
tag @e remove 42.tag.portal.new_spawn