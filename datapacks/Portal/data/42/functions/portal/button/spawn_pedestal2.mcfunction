tag @e remove 42.portal_temp
summon block_display ~ ~ ~ {Tags:["42.portal_pedestal","42.portal_pedestal_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"Pedestal Button"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.2f,0f,-.2f],scale:[.4f,1f,.4f]},Passengers:[{id:block_display,Tags:["42.portal_pedestal_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_stairs},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.2f,1f,-.2f],scale:[.4f,.4f,.4f]}},{id:block_display,Tags:["42.portal_pedestal_group","42.portal_pedestal_dis","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:redstone_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.15f,1.05f,-.15f],scale:[.3f,.3f,.3f]}}]}
summon interaction ~ ~1 ~ {width:.4,height:.4,response:1,Tags:["42.portal_pedestal_group","42.portal_pedestal_hit","42.portal_temp"]}
execute unless entity @s[tag=42.portal_loader] as @e[tag=42.portal_temp,tag=42.portal_pedestal,limit=1] run function 42:portal/new_id
execute unless entity @s[tag=42.portal_loader] run scoreboard players operation @e[tag=42.portal_temp] 42.portal_id = @e[tag=42.portal_temp,tag=42.portal_pedestal,limit=1] 42.portal_id
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_pedestal] 42.portal_time 0
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_pedestal] 42.portal_x 50
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_pedestal] 42.portal_link -1
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_pedestal] 42.portal_lvl -1
scoreboard players set @e[type=!player,tag=42.portal_temp] 42.datapack 3
fill ~ ~ ~ ~ ~ ~ nether_brick_fence replace #42:portal_replace
#
execute if entity @s[tag=42.portal_spawn_rot] as @p at @s run function 42:portal/get_rot
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_e] as @e[tag=42.portal_temp,tag=42.portal_pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_s] as @e[tag=42.portal_temp,tag=42.portal_pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_s] as @e[tag=42.portal_temp,tag=42.portal_pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_w] as @e[tag=42.portal_temp,tag=42.portal_pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_w] as @e[tag=42.portal_temp,tag=42.portal_pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.portal_spawn_rot] if entity @e[tag=42.portal_rot,tag=42.portal_rot_w] as @e[tag=42.portal_temp,tag=42.portal_pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.portal_spawn_rot] run function 42:portal/get_rot2
#
execute if entity @s[tag=42.portal_loader] run function 42:portal/button/load_pedestal with storage 42:portal loader.temp_entity
tag @e remove 42.portal_temp
kill @s[type=area_effect_cloud]