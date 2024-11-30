tag @e remove 42.tag.portal.new_spawn
summon text_display ~ ~ ~ {Tags:["42.tag.portal.grill","42.tag.portal.grill.group","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"Emancipation Grill"',text:'{"text":"iiiiiiii","color":"aqua","obfuscated":true}',alignment:center,background:0,text_opacity:127,view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,.7071f,.7071f],right_rotation:[0f,0f,0f,1f],translation:[1.75f,1.375f,0f],scale:[7.5f,14f,.25f]},Passengers:[\
    {id:text_display,Tags:["42.tag.portal.grill.group","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"42portal"',text:'{"text":"iiiiiiii","color":"aqua","obfuscated":true}',alignment:center,background:0,text_opacity:127,view_range:10f,brightness:{block:15,sky:15},Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,.7071f,.7071f],right_rotation:[0f,0f,0f,1f],translation:[1.75f,1.375f,0f],scale:[7.5f,14f,.25f]}},\
    {id:block_display,Tags:["42.tag.portal.grill.group","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:iron_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-.25f],scale:[.25f,3f,.5f]}},\
    {id:block_display,Tags:["42.tag.portal.grill.group","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:iron_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.25f,0f,-.25f],scale:[.25f,3f,.5f]}}]}

scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.grill] 42.obj.portal.var.x 1
execute if entity @s[tag=42.tag.portal.loader] run function 42:portal/grill/load1 with storage 42:portal loader.temp_entity
execute if entity @s[tag=42.tag.portal.temp2,tag=!42.tag.portal.temp1] run scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.grill] 42.obj.portal.var.x 2
execute if entity @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.grill,scores={42.obj.portal.var.x=2}] as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.grill.group] at @s run rotate @s ~90 ~

execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.grill,limit=1] at @s align xyz positioned ~.5 ~ ~.5 run summon interaction ^ ^ ^ {Tags:["42.tag.portal.grill.hit","42.tag.portal.grill.group","42.tag.portal.new_spawn"],width:1,height:3}
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.grill,limit=1] at @s align xyz positioned ~.5 ~ ~.5 run summon interaction ^-1 ^ ^ {Tags:["42.tag.portal.grill.hit","42.tag.portal.grill.group","42.tag.portal.new_spawn"],width:1,height:3}
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.grill,limit=1] at @s align xyz positioned ~.5 ~ ~.5 run summon interaction ^1 ^ ^ {Tags:["42.tag.portal.grill.hit","42.tag.portal.grill.group","42.tag.portal.new_spawn"],width:1,height:3}
execute unless entity @s[tag=42.tag.portal.loader] as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.grill,limit=1] run function 42:portal/new_id
execute unless entity @s[tag=42.tag.portal.loader] run scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.grill,limit=1] 42.obj.portal.id
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.grill] 42.obj.portal.lvl -1

execute if entity @s[tag=42.tag.portal.loader] run function 42:portal/grill/load2 with storage 42:portal loader.temp_entity

tag @e remove 42.tag.portal.new_spawn
kill @s[type=area_effect_cloud]