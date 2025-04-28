tag @e remove 42.tag.portal.new_spawn
summon block_display ~ ~.5 ~ {Tags:["42.tag.summon","42.tag.portal.laser.catcher","42.tag.portal.tags.has_tick","42.tag.portal.laser.catcher.group","42.tag.portal.new_spawn","42.tag.portal.is_spawner"],CustomNameVisible:false,CustomName:"Discouragement Beam Receptacle",block_state:{Name:"minecraft:chiseled_polished_blackstone"},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-.5f],scale:[2f,2f,.333f]},Passengers:[\
    {id:"minecraft:block_display",Tags:["42.tag.summon","42.tag.portal.laser.catcher.group","42.tag.portal.new_spawn"],CustomNameVisible:false,CustomName:"42portal",block_state:{Name:"minecraft:quartz_pillar",Properties:{axis:"z"}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.625f,-.625f,-.45f],scale:[1.25f,1.25f,.333f]}},\
    {id:"minecraft:block_display",Tags:["42.tag.summon","42.tag.portal.laser.catcher.group","42.tag.portal.new_spawn"],CustomNameVisible:false,CustomName:"42portal",block_state:{Name:"minecraft:tinted_glass"},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.375f,-.375f,-.45f],scale:[.75f,.75f,.45f]}},\
    {id:"minecraft:block_display",Tags:["42.tag.summon","42.tag.portal.laser.catcher.group","42.tag.portal.laser.catcher.glass","42.tag.portal.new_spawn"],CustomNameVisible:false,CustomName:"42portal",block_state:{Name:"minecraft:blue_stained_glass"},view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.7f,-.7f,-.45f],scale:[1.4f,1.4f,.3]}}]}
execute unless entity @s[tag=42.tag.portal.loader] as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher,limit=1] run function 42:portal/new_id
execute unless entity @s[tag=42.tag.portal.loader] run scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher,limit=1] 42.obj.portal.id
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher.group] at @s run rotate @s 0 -90
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher] 42.obj.portal.var.z 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher] 42.obj.portal.time 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher] 42.obj.portal.link -1
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher] 42.obj.portal.lvl -1
tag @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher] add 42.tag.portal.catcher.on

execute if entity @s[tag=42.tag.portal.tool.arg.u] run scoreboard players set @e[tag=42.tag.portal.laser.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 0
execute if entity @s[tag=42.tag.portal.tool.arg.d] run scoreboard players set @e[tag=42.tag.portal.laser.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 1
execute if entity @s[tag=42.tag.portal.tool.arg.s] run scoreboard players set @e[tag=42.tag.portal.laser.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 2
execute if entity @s[tag=42.tag.portal.tool.arg.n] run scoreboard players set @e[tag=42.tag.portal.laser.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 3
execute if entity @s[tag=42.tag.portal.tool.arg.w] run scoreboard players set @e[tag=42.tag.portal.laser.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 4
execute if entity @s[tag=42.tag.portal.tool.arg.e] run scoreboard players set @e[tag=42.tag.portal.laser.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 5

execute if entity @s[tag=42.tag.portal.loader] run function 42:portal/laser/catcher/load with storage 42:portal loader.temp_entity
execute as @e[tag=42.tag.portal.laser.catcher,tag=42.tag.portal.new_spawn] at @s run function 42:portal/laser/catcher/set_rotation

tag @e remove 42.tag.portal.new_spawn
kill @s[type=area_effect_cloud]