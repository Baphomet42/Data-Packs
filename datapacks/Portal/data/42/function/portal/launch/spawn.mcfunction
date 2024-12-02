tag @e remove 42.tag.portal.launch.spawn
summon block_display ~ ~ ~ {Tags:["42.tag.portal.launch","42.tag.portal.tags.has_tick","42.tag.portal.launch.group","42.tag.portal.launch.spawn"],CustomNameVisible:0b,CustomName:'"Aerial Faith Plate"',block_state:{Name:chiseled_polished_blackstone},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.875f,0f,-1.5f],scale:[1.75f,.1f,3f]},Passengers:[{id:block_display,Tags:["42.tag.portal.launch.dis","42.tag.portal.launch.group","42.tag.portal.launch.spawn"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:polished_deepslate},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,.025f,-1f],scale:[1f,.1f,2f]}},{id:block_display,Tags:["42.tag.portal.launch.dis","42.tag.portal.launch.group","42.tag.portal.launch.spawn"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:black_stained_glass},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.51f,.025f,-1.01f],scale:[1.02f,.225f,2.02f]}},{id:block_display,Tags:["42.tag.portal.launch.group","42.tag.portal.launch.spawn"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:sea_lantern},view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,.15f,-.75f],scale:[.5f,.05f,.5f]}}]}
scoreboard players set @e[type=!player,tag=42.tag.portal.launch.spawn] 42.obj.datapack 3
execute unless entity @s[tag=42.tag.portal.loader] as @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch,limit=1] run function 42:portal/new_id
execute unless entity @s[tag=42.tag.portal.loader] run scoreboard players operation @e[tag=42.tag.portal.launch.spawn] 42.obj.portal.id = @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch,limit=1] 42.obj.portal.id
scoreboard players set @e[tag=42.tag.portal.launch,tag=42.tag.portal.launch.spawn] 42.obj.portal.time 0
scoreboard players set @e[tag=42.tag.portal.launch,tag=42.tag.portal.launch.spawn] 42.obj.portal.var.x 0
scoreboard players set @e[tag=42.tag.portal.launch,tag=42.tag.portal.launch.spawn] 42.obj.portal.var.y 1000
scoreboard players set @e[tag=42.tag.portal.launch,tag=42.tag.portal.launch.spawn] 42.obj.portal.var.z -1000
scoreboard players set @e[tag=42.tag.portal.launch,tag=42.tag.portal.launch.spawn] 42.obj.portal.lvl -1

execute if entity @s[tag=42.tag.portal.tool.arg.rot] as @p at @s run function 42:portal/get_rot
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.e] as @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.s] as @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.s] as @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.w] as @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.w] as @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.w] as @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.tag.portal.tool.arg.rot] run function 42:portal/get_rot2

execute if entity @s[tag=42.tag.portal.loader] run function 42:portal/launch/load with storage 42:portal loader.temp_entity
tag @e remove 42.tag.portal.launch.spawn
kill @s[type=area_effect_cloud]