execute unless entity @s[tag=42.tag.portal.gel.droplet]
execute as @e[tag=42.tag.portal.gel,distance=..0.25] run function 42:portal/gel/fizzle

execute if entity @s[tag=42.tag.portal.gel.clear] run return fail

tag @e remove 42.tag.portal.new_spawn
summon item_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.gel","42.tag.portal.gel.surface","42.tag.portal.new_spawn"],CustomNameVisible:false,CustomName:"Gel",item:{id:"minecraft:white_concrete"},view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.025f,1.025f,1.025f]}}
scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.lvl -1
execute as @e[tag=42.tag.portal.new_spawn,limit=1] run function 42:portal/new_id

scoreboard players operation @e[tag=42.tag.portal.new_spawn,distance=..10,limit=1] 42.obj.portal.id = @s 42.obj.portal.id
scoreboard players operation @e[tag=42.tag.portal.new_spawn,distance=..10,limit=1] 42.obj.portal.lvl = @s 42.obj.portal.lvl

function 42:portal/gel/surface/get_type

tag @e remove 42.tag.portal.new_spawn