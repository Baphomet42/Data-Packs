tag @e remove 42.portal_pellet_spawn
summon item_display ~ ~.5 ~ {Tags:["42.portal_pellet","42.portal_pellet_spawn"],CustomNameVisible:0b,CustomName:'{"text":"High Energy Pellet"}',item:{id:ender_eye,Count:1},item_display:fixed,billboard:center,brightness:{sky:15,block:15},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
scoreboard players set @e[tag=42.portal_pellet_spawn] 42.portal_id -2
scoreboard players set @e[type=!player,tag=42.portal_pellet_spawn] 42.datapack 3
execute as @e[tag=42.portal_pellet_spawn] at @s run tp @s ~ ~ ~ 0 -90
scoreboard players set @e[tag=42.portal_pellet_spawn] 42.portal_time 320
scoreboard players set @e[tag=42.portal_pellet_spawn] 42.portal_x 8
scoreboard players set @e[tag=42.portal_pellet_spawn] 42.portal_y 0
scoreboard players set @e[tag=42.portal_pellet_spawn] 42.portal_z 0
scoreboard players set @e[tag=42.portal_pellet_spawn] 42.portal_lvl -1
execute if entity @s[tag=42.portal_spawn_super_pellet] run scoreboard players set @e[tag=42.portal_pellet_spawn] 42.portal_time -1
execute if entity @s[tag=42.portal_spawn_super_pellet] run tag @e[tag=42.portal_pellet_spawn] add 42.portal_pellet_super
execute if entity @s[tag=42.portal_spawn_super_pellet] run data merge entity @e[tag=42.portal_pellet_spawn,limit=1] {item:{id:ender_pearl,Count:1},CustomName:'{"text":"High Energy Super Pellet"}'}
execute if entity @s[tag=42.portal_pellet_spawner] run function 42:portal/pellet/spawner/config
kill @s[type=area_effect_cloud]