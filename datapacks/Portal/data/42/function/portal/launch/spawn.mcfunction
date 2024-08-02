tag @e remove 42.portal_launch_spawn
summon block_display ~ ~ ~ {Tags:["42.portal_launch","42.portal_launcher","42.portal_launch_spawn"],CustomNameVisible:0b,CustomName:'{"text":"Aerial Faith Plate"}',block_state:{Name:chiseled_polished_blackstone},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.875f,0f,-1.5f],scale:[1.75f,.1f,3f]},Passengers:[{id:block_display,Tags:["42.portal_launch_dis","42.portal_launcher","42.portal_launch_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:polished_deepslate},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,.025f,-1f],scale:[1f,.1f,2f]}},{id:block_display,Tags:["42.portal_launch_dis","42.portal_launcher","42.portal_launch_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:black_stained_glass},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.51f,.025f,-1.01f],scale:[1.02f,.225f,2.02f]}},{id:block_display,Tags:["42.portal_launcher","42.portal_launch_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:sea_lantern},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,.15f,-.75f],scale:[.5f,.05f,.5f]}}]}
scoreboard players set @e[type=!player,tag=42.portal_launch_spawn] 42.datapack 3
execute unless entity @s[tag=42.portal_loader] as @e[tag=42.portal_launch_spawn,tag=42.portal_launch,limit=1] run function 42:portal/new_id
execute unless entity @s[tag=42.portal_loader] run scoreboard players operation @e[tag=42.portal_launch_spawn] 42.portal_id = @e[tag=42.portal_launch_spawn,tag=42.portal_launch,limit=1] 42.portal_id
scoreboard players set @e[tag=42.portal_launch,tag=42.portal_launch_spawn] 42.portal_time 0
scoreboard players set @e[tag=42.portal_launch,tag=42.portal_launch_spawn] 42.portal_x 0
scoreboard players set @e[tag=42.portal_launch,tag=42.portal_launch_spawn] 42.portal_y 1000
scoreboard players set @e[tag=42.portal_launch,tag=42.portal_launch_spawn] 42.portal_z -1000
scoreboard players set @e[tag=42.portal_launch,tag=42.portal_launch_spawn] 42.portal_lvl -1

execute if entity @s[tag=42.portal_spawn_rot] as @p at @s run function 42:portal/get_rot
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_e] as @e[tag=42.portal_launch_spawn,tag=42.portal_launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_s] as @e[tag=42.portal_launch_spawn,tag=42.portal_launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_s] as @e[tag=42.portal_launch_spawn,tag=42.portal_launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_w] as @e[tag=42.portal_launch_spawn,tag=42.portal_launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_w] as @e[tag=42.portal_launch_spawn,tag=42.portal_launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_w] as @e[tag=42.portal_launch_spawn,tag=42.portal_launch] at @s run function 42:portal/launch/rotate
execute if entity @s[tag=42.portal_spawn_rot] run function 42:portal/get_rot2

execute if entity @s[tag=42.portal_loader] run function 42:portal/launch/load with storage 42:portal loader.temp_entity
tag @e remove 42.portal_launch_spawn
kill @s[type=area_effect_cloud]