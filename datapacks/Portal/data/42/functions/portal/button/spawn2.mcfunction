tag @e remove 42.portal_temp
summon block_display ~ ~ ~ {Tags:["42.portal_btn","42.portal_btn_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"Heavy Duty Super Button"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,0f,-1.25f],scale:[2.5f,.15f,2.5f]},Passengers:[{id:block_display,Tags:["42.portal_btn_dis","42.portal_btn_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:redstone_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.875f,.4f,-.875f],scale:[1.75f,.1f,1.75f]}},{id:block_display,Tags:["42.portal_btn_dis2","42.portal_btn_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:redstone_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.6f,.15f,-.6f],scale:[1.2f,.25f,1.2f]}},{id:block_display,Tags:["42.portal_btn_dis3","42.portal_btn_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:air},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.875f,.15f,-.75f],scale:[.125f,.475f,1.625f]}},{id:block_display,Tags:["42.portal_btn_dis4","42.portal_btn_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:air},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.75f,.15f,.75f],scale:[1.625f,.475f,.125f]}},{id:block_display,Tags:["42.portal_btn_dis5","42.portal_btn_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:air},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.875f,.15f,-.875f],scale:[1.625f,.475f,.125f]}}]}
execute as @e[tag=42.portal_temp,tag=42.portal_btn,limit=1] run function 42:portal/new_id
scoreboard players operation @e[tag=42.portal_temp] 42.portal_id = @e[tag=42.portal_temp,tag=42.portal_btn,limit=1] 42.portal_id
scoreboard players set @e[tag=42.portal_temp] 42.portal_time 0
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_btn] 42.portal_link -1
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_btn] 42.portal_lvl -1
scoreboard players set @e[type=!player,tag=42.portal_temp] 42.datapack 3
fill ~ ~ ~ ~ ~ ~ iron_trapdoor replace #42:portal_replace
tag @e remove 42.portal_temp
kill @s[type=area_effect_cloud]