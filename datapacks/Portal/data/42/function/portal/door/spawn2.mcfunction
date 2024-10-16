tag @e remove 42.portal_temp
summon block_display ~ ~ ~ {Tags:["42.portal_door","42.portal_door_dis","42.portal_door_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"Door"}',block_state:{Name:iron_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,0f,-.3f],scale:[1.25f,2.75f,.6f]},Passengers:[{id:block_display,Tags:["42.portal_door_dis","42.portal_door_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:iron_block},view_range:10f,Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,0f,-.3f],scale:[1.25f,2.75f,.6f]}},{id:block_display,Tags:["42.portal_door_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:polished_deepslate},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,2.75f,-.375f],scale:[3f,.25f,.75f]}},{id:block_display,Tags:["42.portal_door_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:polished_deepslate},view_range:10f,Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-.375f],scale:[.25f,2.75f,.75f]}},{id:block_display,Tags:["42.portal_door_group","42.portal_temp"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:polished_deepslate},view_range:10f,Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-.375f],scale:[.25f,2.75f,.75f]}}]}
execute unless entity @s[tag=42.portal_loader] as @e[tag=42.portal_temp,tag=42.portal_door,limit=1] run function 42:portal/new_id
execute unless entity @s[tag=42.portal_loader] run scoreboard players operation @e[tag=42.portal_temp] 42.portal_id = @e[tag=42.portal_temp,tag=42.portal_door,limit=1] 42.portal_id
scoreboard players set @e[type=!player,tag=42.portal_temp] 42.datapack 3
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_door] 42.portal_link -1
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_door] 42.portal_lvl -1

scoreboard players set @e[tag=42.portal_temp,tag=42.portal_door] 42.portal_x 1
execute if entity @s[tag=42.portal_temp2,tag=!42.portal_temp1] run scoreboard players set @e[tag=42.portal_temp,tag=42.portal_door] 42.portal_x 2

execute if entity @s[tag=42.portal_loader] run function 42:portal/door/load with storage 42:portal loader.temp_entity

execute as @e[tag=42.portal_temp,tag=42.portal_door,scores={42.portal_x=1}] at @s run fill ~-1 ~ ~ ~1 ~2 ~ polished_blackstone_wall replace #42:portal_replace
execute as @e[tag=42.portal_temp,tag=42.portal_door,scores={42.portal_x=2}] at @s run fill ~ ~ ~-1 ~ ~2 ~1 polished_blackstone_wall replace #42:portal_replace
execute as @e[tag=42.portal_temp,tag=42.portal_door,scores={42.portal_x=2}] as @e[tag=42.portal_temp,tag=42.portal_door_group] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[tag=42.portal_temp,tag=42.portal_door,scores={42.portal_x=2}] at @s run function 42:portal/door/unpower

tag @e remove 42.portal_temp
kill @s[type=area_effect_cloud]