function 42:portal/tag_id
tag @e remove 42.tag.portal.new_spawn
summon block_display ~ ~ ~ {Tags:["42.tag.portal.new_spawn","42.tag.portal.pellet.spawner","42.tag.portal.pellet.spawner.group","42.tag.portal.tool.spawn.pellet.super","42.tag.portal.is_spawner"],CustomNameVisible:0b,CustomName:'"Super Pellet Spawner"',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,-.25f,-.25f],scale:[.5f,.5f,.5f]},Passengers:[\
    {id:text_display,Tags:["42.tag.portal.new_spawn","42.tag.portal.pellet.spawner.lbl","42.tag.portal.pellet.spawner.group"],CustomNameVisible:0b,CustomName:'"42portal"',text:'"Super Pellet Spawner"',see_through:true,alignment:center,billboard:vertical,view_range:0f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.25f,0f],scale:[1f,1f,1f]}}]}
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.spawner] 42.obj.portal.lvl -1
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.spawner] 42.obj.portal.link -1

scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @s 42.obj.portal.id
execute at @s rotated as @e[tag=42.tag.portal.id,tag=42.tag.portal.pellet,limit=1] as @e[tag=42.tag.portal.new_spawn] run rotate @s ~ ~
execute if score @s 42.obj.portal.lvl matches 1.. run scoreboard players operation @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.spawner] 42.obj.portal.lvl = @s 42.obj.portal.lvl

execute as @e[tag=42.tag.portal.pellet.spawner,tag=42.tag.portal.new_spawn] at @s run function 42:portal/pellet/spawner/show
tag @e remove 42.tag.portal.new_spawn
tag @e remove 42.tag.portal.id
function 42:portal/pellet/pellet/fizzle

#   ====scores====
#   portal_lvl

#   =====tags=====
#   portal_pellet_spawner     main tick
#   portal_pellet_spawner_group   all spawner elements to be fizzled together
#   portal_pellet_spawner_show    if the spawner can be seen (and fizzled with the fizzler tool)