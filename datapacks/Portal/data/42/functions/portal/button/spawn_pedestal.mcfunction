tag @e remove 42.portal_temp
summon block_display ~ ~ ~ {Tags:["42.portal_pedestal","42.portal_pedestal_group","42.portal_temp"],CustomName:'{"text":"Pedestal Button"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.2f,0f,-.2f],scale:[.4f,1f,.4f]},Passengers:[{id:block_display,Tags:["42.portal_pedestal_group","42.portal_temp"],CustomName:'{"text":"42portal"}',block_state:{Name:quartz_stairs},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.2f,1f,-.2f],scale:[.4f,.4f,.4f]}},{id:block_display,Tags:["42.portal_pedestal_group","42.portal_pedestal_dis","42.portal_temp"],CustomName:'{"text":"42portal"}',block_state:{Name:redstone_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.15f,1.05f,-.15f],scale:[.3f,.3f,.3f]}}]}
summon interaction ~ ~1 ~ {width:.4,height:.4,response:1,Tags:["42.portal_pedestal_group","42.portal_pedestal_hit","42.portal_temp"],CustomName:'{"text":"42portal"}'}
execute as @e[tag=42.portal_temp] store result score @s 42.portal_id run data get entity @e[tag=42.portal_temp,tag=42.portal_pedestal,limit=1] UUID[0]
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_pedestal] 42.portal_time 0
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_pedestal] 42.portal_x 50
scoreboard players set @e[tag=42.portal_temp,tag=42.portal_pedestal] 42.portal_link -1
setblock ~ ~ ~ birch_fence
tag @e remove 42.portal_temp
kill @s[type=area_effect_cloud]