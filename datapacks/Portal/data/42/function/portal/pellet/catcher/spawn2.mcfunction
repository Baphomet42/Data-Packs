tag @e remove 42.tag.portal.new_spawn
summon block_display ~ ~.5 ~ {Tags:["42.tag.portal.pellet.catcher","42.tag.portal.tags.has_tick","42.tag.portal.pellet.catcher.group","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"High Energy Pellet Catcher"',block_state:{Name:quartz_pillar,Properties:{axis:z}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-.5f],scale:[2f,2f,.333f]},Passengers:[{id:block_display,Tags:["42.tag.portal.pellet.catcher.group","42.tag.portal.pellet.catcher.glass","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:blue_stained_glass},view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.375f,-.375f,-.45f],scale:[.75f,.75f,.75f]}}]}
execute unless entity @s[tag=42.tag.portal.loader] as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.catcher,limit=1] run function 42:portal/new_id
execute unless entity @s[tag=42.tag.portal.loader] run scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.catcher,limit=1] 42.obj.portal.id
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.catcher] at @s run fill ~ ~ ~ ~ ~ ~ barrier replace #42:portal/portal_replace
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.catcher.group] at @s run rotate @s 0 -90
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.catcher] 42.obj.portal.var.z 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.catcher] 42.obj.portal.link -1
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.catcher] 42.obj.portal.lvl -1

execute if entity @s[tag=42.tag.portal.tool.arg.u] run scoreboard players set @e[tag=42.tag.portal.pellet.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 0
execute if entity @s[tag=42.tag.portal.tool.arg.d] run scoreboard players set @e[tag=42.tag.portal.pellet.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 1
execute if entity @s[tag=42.tag.portal.tool.arg.s] run scoreboard players set @e[tag=42.tag.portal.pellet.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 2
execute if entity @s[tag=42.tag.portal.tool.arg.n] run scoreboard players set @e[tag=42.tag.portal.pellet.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 3
execute if entity @s[tag=42.tag.portal.tool.arg.w] run scoreboard players set @e[tag=42.tag.portal.pellet.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 4
execute if entity @s[tag=42.tag.portal.tool.arg.e] run scoreboard players set @e[tag=42.tag.portal.pellet.catcher,tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 5

execute if entity @s[tag=42.tag.portal.loader] run function 42:portal/pellet/catcher/load with storage 42:portal loader.temp_entity
execute as @e[tag=42.tag.portal.pellet.catcher,tag=42.tag.portal.new_spawn] at @s run function 42:portal/pellet/catcher/set_blocks

tag @e remove 42.tag.portal.new_spawn
kill @s[type=area_effect_cloud]