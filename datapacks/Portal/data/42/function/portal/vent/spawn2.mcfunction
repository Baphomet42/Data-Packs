tag @e remove 42.tag.portal.temp
summon block_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.vent","42.tag.portal.vent.group","42.tag.portal.tool.spawn.cube.storage","42.tag.portal.temp","42.tag.portal.is_spawner"],CustomNameVisible:false,CustomName:"Vital Apparatus Vent",block_state:"minecraft:black_stained_glass",view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1.5f,-1f],scale:[2f,1.5f,2f]},Passengers:[{id:"minecraft:block_display",Tags:["42.tag.summon","42.tag.portal.vent.group","42.tag.portal.skin","42.tag.portal.temp"],CustomNameVisible:false,CustomName:"42portal",block_state:"minecraft:black_concrete",view_range:10f,brightness:{block:0,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,.875f,-1f],scale:[2f,.12f,2f]}}]}
execute unless entity @s[tag=42.tag.portal.loader] as @e[tag=42.tag.portal.temp,tag=42.tag.portal.vent,limit=1] run function 42:portal/new_id
execute unless entity @s[tag=42.tag.portal.loader] run scoreboard players operation @e[tag=42.tag.portal.temp] 42.obj.portal.id = @e[tag=42.tag.portal.temp,tag=42.tag.portal.vent,limit=1] 42.obj.portal.id
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.vent] 42.obj.portal.var.x 1
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.vent] 42.obj.portal.link -1
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.vent] 42.obj.portal.skin 0
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.vent] 42.obj.portal.lvl -1
execute store result score @e[tag=42.tag.portal.temp,tag=42.tag.portal.vent] 42.obj.portal.var.y run random value 0..2
fill ~-1 ~-2 ~-1 ~1 ~ ~1 air replace #42:portal/portal_replace
fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_quartz replace #42:portal/portal_replace
fill ~ ~ ~ ~ ~ ~ air replace smooth_quartz
fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 smooth_quartz_slab replace #42:portal/portal_replace
fill ~ ~-2 ~ ~ ~-2 ~ air replace smooth_quartz_slab

execute if entity @s[tag=42.tag.portal.loader] run function 42:portal/vent/load with storage 42:portal loader.temp_entity
scoreboard players remove @e[tag=42.tag.portal.temp,tag=42.tag.portal.vent] 42.obj.portal.skin 1
scoreboard players remove @e[tag=42.tag.portal.temp,tag=42.tag.portal.vent] 42.obj.portal.var.x 1
execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.vent] at @s run function 42:portal/vent/skin
execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.vent] at @s run function 42:portal/vent/cycle_silent

tag @e remove 42.tag.portal.temp
kill @s[type=area_effect_cloud]