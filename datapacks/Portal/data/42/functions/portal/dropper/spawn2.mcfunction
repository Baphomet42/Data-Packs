tag @e remove 42.portal_temp
summon block_display ~ ~ ~ {Tags:["42.portal_dropper","42.portal_dropper_group","42.portal_spawn_cube1","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"Vital Apparatus Vent"}',block_state:{Name:black_stained_glass},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1.5f,-1f],scale:[2f,1.5f,2f]},Passengers:[{id:block_display,Tags:["42.portal_dropper_group","42.portal_skin","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:black_concrete},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,.875f,-1f],scale:[2f,.12f,2f]}}]}
execute as @e[tag=42.portal_temp,tag=42.portal_dropper,limit=1] run function 42:portal/new_id
scoreboard players operation @e[tag=42.portal_temp] 42.portal_id = @e[tag=42.portal_temp,tag=42.portal_dropper,limit=1] 42.portal_id
scoreboard players set @e[type=!player,tag=42.portal_temp] 42.datapack 3
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_dropper] 42.portal_x 1
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_dropper] 42.portal_link -1
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_dropper] 42.portal_skin 0
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_dropper] 42.portal_lvl -1
fill ~-1 ~-2 ~-1 ~1 ~ ~1 air replace #42:portal_replace
fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_quartz replace #42:portal_replace
fill ~ ~ ~ ~ ~ ~ air replace smooth_quartz
fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 smooth_quartz_slab replace #42:portal_replace
fill ~ ~-2 ~ ~ ~-2 ~ air replace smooth_quartz_slab
tag @e remove 42.portal_temp
kill @s[type=area_effect_cloud]