tag @e remove 42.portal_new_spawn
summon block_display ~ ~.5 ~ {Tags:["42.portal_pellet_emitter","42.portal_pellet_emitter_group","42.portal_new_spawn","42.portal_is_spawner"],CustomNameVisible:0b,CustomName:'{"text":"High Energy Pellet Launcher"}',block_state:{Name:quartz_pillar,Properties:{axis:z}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-.5f],scale:[2f,2f,.333f]},Passengers:[{id:block_display,Tags:["42.portal_pellet_emitter_group","42.portal_new_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:chiseled_quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.625f,-.625f,-.45f],scale:[1.25f,1.25f,.75f]}},{id:block_display,Tags:["42.portal_pellet_emitter_group","42.portal_new_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:chiseled_polished_blackstone},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,-.25f,0f],scale:[.5f,.5f,.5f]}},{id:block_display,Tags:["42.portal_pellet_emitter_group","42.portal_pellet_emitter_glass","42.portal_new_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:orange_stained_glass},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,-.5f,-.45f],scale:[1f,1f,.8f]}}]}
execute as @e[tag=42.portal_new_spawn,tag=42.portal_pellet_emitter,limit=1] run function 42:portal/new_id
scoreboard players operation @e[tag=42.portal_new_spawn] 42.portal_id = @e[tag=42.portal_new_spawn,tag=42.portal_pellet_emitter,limit=1] 42.portal_id
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
execute as @e[tag=42.portal_new_spawn,tag=42.portal_pellet_emitter] at @s run fill ~ ~ ~ ~ ~ ~ barrier replace #42:portal_replace
execute as @e[tag=42.portal_new_spawn,tag=42.portal_pellet_emitter_group] at @s run tp @s ~ ~ ~ 0 -90
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_emitter] 42.portal_z 0
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_emitter] 42.portal_time 0
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_emitter] 42.portal_lvl -1
tag @e[tag=42.portal_new_spawn,tag=42.portal_pellet_emitter] add 42.portal_emitter_on
#
execute if entity @s[tag=42.portal_spawn_u] run scoreboard players set @e[tag=42.portal_pellet_emitter,tag=42.portal_new_spawn] 42.portal_z 0
execute if entity @s[tag=42.portal_spawn_d] run scoreboard players set @e[tag=42.portal_pellet_emitter,tag=42.portal_new_spawn] 42.portal_z 1
execute if entity @s[tag=42.portal_spawn_s] run scoreboard players set @e[tag=42.portal_pellet_emitter,tag=42.portal_new_spawn] 42.portal_z 2
execute if entity @s[tag=42.portal_spawn_n] run scoreboard players set @e[tag=42.portal_pellet_emitter,tag=42.portal_new_spawn] 42.portal_z 3
execute if entity @s[tag=42.portal_spawn_w] run scoreboard players set @e[tag=42.portal_pellet_emitter,tag=42.portal_new_spawn] 42.portal_z 4
execute if entity @s[tag=42.portal_spawn_e] run scoreboard players set @e[tag=42.portal_pellet_emitter,tag=42.portal_new_spawn] 42.portal_z 5
execute as @e[tag=42.portal_pellet_emitter,tag=42.portal_new_spawn] at @s run function 42:portal/pellet/emitter/set_blocks
#
tag @e remove 42.portal_new_spawn
kill @s[type=area_effect_cloud]