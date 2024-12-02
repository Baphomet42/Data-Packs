tag @e remove 42.tag.portal.temp
summon block_display ~ ~ ~ {Tags:["42.tag.portal.dropper","42.tag.portal.dropper.group","42.tag.portal.tool.spawn.cube.storage","42.tag.portal.temp","42.tag.portal.is_spawner"],CustomNameVisible:0b,CustomName:'"Vital Apparatus Vent"',block_state:{Name:black_stained_glass},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1.5f,-1f],scale:[2f,1.5f,2f]},Passengers:[{id:block_display,Tags:["42.tag.portal.dropper.group","42.tag.portal.skin","42.tag.portal.temp"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:black_concrete},view_range:10f,brightness:{block:0,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,.875f,-1f],scale:[2f,.12f,2f]}}]}
execute unless entity @s[tag=42.tag.portal.loader] as @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper,limit=1] run function 42:portal/new_id
execute unless entity @s[tag=42.tag.portal.loader] run scoreboard players operation @e[tag=42.tag.portal.temp] 42.obj.portal.id = @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper,limit=1] 42.obj.portal.id
scoreboard players set @e[type=!player,tag=42.tag.portal.temp] 42.obj.datapack 3
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] 42.obj.portal.var.x 1
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] 42.obj.portal.link -1
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] 42.obj.portal.skin 0
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] 42.obj.portal.lvl -1
fill ~-1 ~-2 ~-1 ~1 ~ ~1 air replace #42:portal/portal_replace
fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_quartz replace #42:portal/portal_replace
fill ~ ~ ~ ~ ~ ~ air replace smooth_quartz
fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 smooth_quartz_slab replace #42:portal/portal_replace
fill ~ ~-2 ~ ~ ~-2 ~ air replace smooth_quartz_slab
execute if entity @s[tag=42.tag.portal.loader] run function 42:portal/dropper/load with storage 42:portal loader.temp_entity
tag @e remove 42.tag.portal.temp
kill @s[type=area_effect_cloud]