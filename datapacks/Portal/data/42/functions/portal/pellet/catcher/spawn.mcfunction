tag @e remove 42.portal_new_spawn
summon block_display ~ ~.5 ~ {Tags:["42.portal_pellet_catcher","42.portal_pellet_catcher_group","42.portal_new_spawn"],CustomName:'{"text":"High Energy Pellet Catcher"}',block_state:{Name:quartz_pillar,Properties:{axis:z}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-.5f],scale:[2f,2f,.333f]},Passengers:[{id:block_display,Tags:["42.portal_pellet_catcher_group","42.portal_pellet_catcher_glass","42.portal_new_spawn"],CustomName:'{"text":"42portal"}',block_state:{Name:orange_stained_glass},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.375f,-.375f,-.5f],scale:[.75f,.75f,.75f]}}]}
execute as @e[tag=42.portal_new_spawn] store result score @s 42.portal_id run data get entity @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher,limit=1] UUID[0]
fill ~-1 ~ ~ ~1 ~ ~ chain[axis=y] replace air
fill ~ ~ ~-1 ~ ~ ~1 chain[axis=y] replace air
execute as @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher] at @s run setblock ~ ~ ~ barrier
execute as @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher_group] at @s run tp @s ~ ~ ~ 0 -90
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher] 42.portal_z 0
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher] 42.portal_link -1
execute as @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher] at @s run function 42:portal/pellet/catcher/smart_rotate
tag @e remove 42.portal_new_spawn
kill @s[type=area_effect_cloud]