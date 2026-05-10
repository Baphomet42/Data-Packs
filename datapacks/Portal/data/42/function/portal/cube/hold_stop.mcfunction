tag @s remove 42.tag.portal.cube.held
tag @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit,limit=1] remove 42.tag.portal.cube.held
data modify entity @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit,limit=1] response set value true

scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.id
execute as @a if score @s 42.obj.portal.id = #42.var.portal.dummy 42.obj.portal.temp run scoreboard players set @s 42.obj.portal.id 0

execute unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.collision_vehicle,limit=1] run return fail

tag @e remove 42.tag.portal.cube.new_shulker
execute at @s run summon shulker ~ ~ ~ {Tags:["42.tag.summon","42.tag.tech","42.tag.portal.cube.new_shulker","42.tag.portal.cube.group","42.tag.portal.cube.collision"],CustomNameVisible:false,CustomName:"42portal",NoAI:true,Invulnerable:true,Silent:true,DeathLootTable:"42:empty",PersistenceRequired:true,active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false},{id:"minecraft:resistance",duration:-1,amplifier:42b,show_particles:false,show_icon:false}],attributes:[{id:"minecraft:scale",base:.9999d}]}
scoreboard players operation @e[tag=42.tag.portal.cube.new_shulker,limit=1] 42.obj.portal.id = @s 42.obj.portal.id
ride @e[tag=42.tag.portal.cube.new_shulker,limit=1] mount @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.collision_vehicle,limit=1]
tag @e remove 42.tag.portal.cube.new_shulker
function 42:portal/tag_id