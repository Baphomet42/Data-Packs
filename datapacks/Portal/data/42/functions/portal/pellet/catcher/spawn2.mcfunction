tag @e remove 42.portal_new_spawn
summon block_display ~ ~.5 ~ {Tags:["42.portal_pellet_catcher","42.portal_pellet_catcher_group","42.portal_new_spawn"],CustomNameVisible:0b,CustomName:'{"text":"High Energy Pellet Catcher"}',block_state:{Name:quartz_pillar,Properties:{axis:z}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-.5f],scale:[2f,2f,.333f]},Passengers:[{id:block_display,Tags:["42.portal_pellet_catcher_group","42.portal_pellet_catcher_glass","42.portal_new_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:orange_stained_glass},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.375f,-.375f,-.45f],scale:[.75f,.75f,.75f]}}]}
execute as @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher,limit=1] run function 42:portal/new_id
scoreboard players operation @e[tag=42.portal_new_spawn] 42.portal_id = @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher,limit=1] 42.portal_id
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
execute as @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher] at @s run fill ~ ~ ~ ~ ~ ~ barrier replace #42:portal_replace
execute as @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher_group] at @s run tp @s ~ ~ ~ 0 -90
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher] 42.portal_z 0
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher] 42.portal_link -1
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher] 42.portal_lvl -1
execute as @e[tag=42.portal_new_spawn,tag=42.portal_pellet_catcher] at @s run function 42:portal/pellet/catcher/smart_rotate
tag @e remove 42.portal_new_spawn
kill @s[type=area_effect_cloud]