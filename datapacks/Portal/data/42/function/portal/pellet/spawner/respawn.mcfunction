tag @e remove 42.tag.portal.new_spawn
summon block_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.pellet.spawner","42.tag.portal.pellet.spawner.group","42.tag.portal.tool.spawn.pellet.super","42.tag.portal.is_spawner"],CustomNameVisible:false,CustomName:"Super Pellet Spawner",block_state:"minecraft:ice",view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,-.25f,-.25f],scale:[.5f,.5f,.5f]},Passengers:[\
    {id:"minecraft:text_display",Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.pellet.spawner.lbl","42.tag.portal.pellet.spawner.group"],CustomNameVisible:false,CustomName:"42portal",text:"Super Pellet Spawner",see_through:true,alignment:"center",billboard:"vertical",view_range:0f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.25f,0f],scale:[1f,1f,1f]}}]}
execute store result score @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.spawner] 42.obj.portal.lvl run data get storage 42:portal loader.lvl
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.spawner] 42.obj.portal.link $(link)
$scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id $(id)
$execute as @e[tag=42.tag.portal.new_spawn] run rotate @s $(rotation_0) $(rotation_1)

execute if data storage 42:portal loader.temp_entity.tag_show as @e[tag=42.tag.portal.pellet.spawner,tag=42.tag.portal.new_spawn] at @s run function 42:portal/pellet/spawner/show
execute unless data storage 42:portal loader.temp_entity.tag_show as @e[tag=42.tag.portal.pellet.spawner,tag=42.tag.portal.new_spawn] at @s run function 42:portal/pellet/spawner/hide
tag @e remove 42.tag.portal.new_spawn