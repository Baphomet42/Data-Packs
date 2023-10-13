tag @e remove 42.portal_temp
summon block_display ~ ~ ~ {Tags:["42.portal_door","42.portal_door_dis","42.portal_door_group","42.portal_temp"],CustomName:'{"text":"Door"}',block_state:{Name:iron_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-.3f],scale:[1.5f,2.75f,.6f]},Passengers:[{id:block_display,Tags:["42.portal_door_dis","42.portal_door_group","42.portal_temp"],CustomName:'{"text":"42portal"}',block_state:{Name:iron_block},view_range:10f,Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-.3f],scale:[1.5f,2.75f,.6f]}},{id:block_display,Tags:["42.portal_door_group","42.portal_temp"],CustomName:'{"text":"42portal"}',block_state:{Name:polished_deepslate},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,2.75f,-.375f],scale:[3f,.25f,.75f]}},{id:block_display,Tags:["42.portal_door_group","42.portal_temp"],CustomName:'{"text":"42portal"}',block_state:{Name:polished_deepslate},view_range:10f,Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-.375f],scale:[.25f,2.75f,.75f]}},{id:block_display,Tags:["42.portal_door_group","42.portal_temp"],CustomName:'{"text":"42portal"}',block_state:{Name:polished_deepslate},view_range:10f,Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-.375f],scale:[.25f,2.75f,.75f]}}]}
execute as @e[tag=42.portal_temp] store result score @s 42.portal_id run data get entity @e[tag=42.portal_temp,tag=42.portal_door,limit=1] UUID[0]
execute if entity @s[tag=42.portal_temp1] run fill ~-1 ~ ~ ~1 ~2 ~ polished_blackstone_wall
execute if entity @s[tag=42.portal_temp2,tag=!42.portal_temp1] run fill ~ ~ ~-1 ~ ~2 ~1 polished_blackstone_wall
execute if entity @s[tag=42.portal_temp2,tag=!42.portal_temp1] as @e[tag=42.portal_temp,tag=42.portal_door_group] at @s run tp @s ~ ~ ~ ~90 ~
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_door] 42.portal_x 1
execute if entity @s[tag=42.portal_temp2,tag=!42.portal_temp1] run scoreboard players set @e[tag=42.portal_temp,tag=42.portal_door] 42.portal_x 2
execute if entity @s[tag=42.portal_temp2,tag=!42.portal_temp1] as @e[tag=42.portal_temp,tag=42.portal_door] at @s run function 42:portal/door/unpower
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_door] 42.portal_link -1
execute as @p at @s run function 42:portal/get_rot
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_w] as @e[tag=42.portal_temp,tag=42.portal_door] at @s run function 42:portal/door/rotate
execute if entity @e[tag=42.portal_rot,tag=42.portal_rot_e] as @e[tag=42.portal_temp,tag=42.portal_door] at @s run function 42:portal/door/rotate
tag @e remove 42.portal_rot
tag @e remove 42.portal_temp
kill @s[type=area_effect_cloud]