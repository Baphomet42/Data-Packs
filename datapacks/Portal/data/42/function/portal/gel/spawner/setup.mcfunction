function 42:portal/tag_id
tag @e remove 42.tag.portal.new_spawn
summon block_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.gel.spawner","42.tag.portal.gel.spawner.group","42.tag.portal.is_spawner"],CustomNameVisible:false,CustomName:"Gel Spawner",block_state:{Name:"minecraft:ice"},view_range:0f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.515f,-.515f,-.515f],scale:[1.03f,1.03f,1.03f]},Passengers:[\
    {id:"minecraft:text_display",Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.gel.spawner.lbl","42.tag.portal.gel.spawner.group"],CustomNameVisible:false,CustomName:"42portal",text:"Gel Spawner",see_through:true,alignment:"center",billboard:"vertical",view_range:0f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.25f,0f],scale:[1f,1f,1f]}}]}
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.gel.spawner] 42.obj.portal.lvl -1
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.gel.spawner] 42.obj.portal.link -1

scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @s 42.obj.portal.id
execute at @s rotated as @e[tag=42.tag.portal.id,tag=42.tag.portal.gel,limit=1] as @e[tag=42.tag.portal.new_spawn] run rotate @s ~ ~
execute if score @s 42.obj.portal.lvl matches 1.. run scoreboard players operation @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.gel.spawner] 42.obj.portal.lvl = @s 42.obj.portal.lvl

execute if entity @s[tag=42.tag.portal.gel.blue] run tag @e[tag=42.tag.portal.gel.spawner,tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.tool.spawn.gel.blue
execute if entity @s[tag=42.tag.portal.gel.orange] run tag @e[tag=42.tag.portal.gel.spawner,tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.tool.spawn.gel.orange
execute if entity @s[tag=42.tag.portal.gel.white] run tag @e[tag=42.tag.portal.gel.spawner,tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.tool.spawn.gel.white

execute as @e[tag=42.tag.portal.gel.spawner,tag=42.tag.portal.new_spawn] at @s run function 42:portal/gel/spawner/show
tag @e remove 42.tag.portal.new_spawn
tag @e remove 42.tag.portal.id
function 42:portal/gel/fizzle
function 42:portal/tools/sel_summon

#   ====scores====
#   portal_lvl

#   =====tags=====
#   portal_gel_spawner     main tick
#   portal_gel_spawner_group   all spawner elements to be fizzled together
#   portal_gel_spawner_show    if the spawner can be seen (and fizzled with the fizzler tool)