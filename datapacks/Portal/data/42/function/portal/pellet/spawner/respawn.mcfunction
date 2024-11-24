tag @e remove 42.tag.portal.new_spawn
summon block_display ~ ~ ~ {Tags:["42.tag.portal.new_spawn","42.tag.portal.pellet.spawner","42.tag.portal.pellet.spawner.group","42.tag.portal.tool.spawn.pellet.super","42.tag.portal.is_spawner"],CustomNameVisible:0b,CustomName:'"Super Pellet Spawner"',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,-.25f,-.25f],scale:[.5f,.5f,.5f]},Passengers:[\
    {id:text_display,Tags:["42.tag.portal.new_spawn","42.tag.portal.pellet.spawner.lbl","42.tag.portal.pellet.spawner.group"],CustomNameVisible:0b,CustomName:'"42portal"',text:'"Super Pellet Spawner"',see_through:true,alignment:center,billboard:vertical,view_range:0f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.25f,0f],scale:[1f,1f,1f]}}]}
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.spawner] 42.obj.portal.lvl $(lvl)
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.spawner] 42.obj.portal.link $(link)
$scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id $(id)
$execute as @e[tag=42.tag.portal.new_spawn] run rotate @s $(rotation_0) $(rotation_1)

execute if data storage 42:portal loader.temp_entity.tag_show as @e[tag=42.tag.portal.pellet.spawner,tag=42.tag.portal.new_spawn] at @s run function 42:portal/pellet/spawner/show
execute unless data storage 42:portal loader.temp_entity.tag_show as @e[tag=42.tag.portal.pellet.spawner,tag=42.tag.portal.new_spawn] at @s run function 42:portal/pellet/spawner/hide
tag @e remove 42.tag.portal.new_spawn