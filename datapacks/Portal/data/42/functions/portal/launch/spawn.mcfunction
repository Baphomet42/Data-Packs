tag @e remove 42.portal_launch_spawn
summon block_display ~ ~ ~ {Tags:["42.portal_launch","42.portal_launcher","42.portal_launch_spawn"],CustomName:'{"text":"Aerial Faith Plate"}',block_state:{Name:netherite_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.875f,0f,-1.5f],scale:[1.75f,.1f,3f]},Passengers:[{id:block_display,Tags:["42.portal_launch_dis","42.portal_launcher","42.portal_launch_spawn"],CustomName:'{"text":"Aerial Faith Plate"}',block_state:{Name:chiseled_deepslate},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-1f],scale:[1f,.125f,2f]}},{id:block_display,Tags:["42.portal_launch_dis","42.portal_launcher","42.portal_launch_spawn"],CustomName:'{"text":"Aerial Faith Plate"}',block_state:{Name:black_stained_glass},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.51f,0f,-1.01f],scale:[1.02f,.25f,2.02f]}}]}
execute as @e[tag=42.portal_launch_spawn] store result score @s 42.portal_id run data get entity @e[tag=42.portal_launch_spawn,tag=42.portal_launch,limit=1] UUID[0]
scoreboard players set @e[tag=42.portal_launch,tag=42.portal_launch_spawn] 42.portal_time 0
scoreboard players set @e[tag=42.portal_launch,tag=42.portal_launch_spawn] 42.portal_x 0
scoreboard players set @e[tag=42.portal_launch,tag=42.portal_launch_spawn] 42.portal_y 1000
scoreboard players set @e[tag=42.portal_launch,tag=42.portal_launch_spawn] 42.portal_z -1000
tag @e remove 42.portal_launch_spawn
kill @s[type=area_effect_cloud]