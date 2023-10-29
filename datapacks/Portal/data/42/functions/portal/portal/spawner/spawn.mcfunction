tag @e remove 42.portal_new_spawn
execute if entity @s[tag=42.portal] run summon block_display ~ ~ ~ {Tags:["42.portal_spawner","42.portal_spawner_group","42.portal_new_spawn","42.portal_is_spawner"],CustomNameVisible:0b,CustomName:'{"text":"Portal Spawner"}',block_state:{Name:iron_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.0625f,-.875f,-.125f],scale:[.125f,2.75f,.125f]},Passengers:[{id:block_display,Tags:["42.portal_spawner_group","42.portal_new_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:iron_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.9375f,-.875f,-.125f],scale:[.125f,2.75f,.125f]}},{id:block_display,Tags:["42.portal_spawner_group","42.portal_new_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:light_blue_concrete},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.015625f,-.8125f,-.015625f],scale:[.03125f,2.625f,.03125f]}},{id:block_display,Tags:["42.portal_spawner_group","42.portal_new_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:light_blue_concrete},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.984375f,-.8125f,-.015625f],scale:[.03125f,2.625f,.03125f]}}]}
tp @e[tag=42.portal_spawner_group,tag=42.portal_new_spawn] ^ ^ ^.625 ~ ~
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
execute as @e[tag=42.portal_new_spawn,tag=42.portal_spawner,limit=1] run function 42:portal/new_id
scoreboard players operation @e[tag=42.portal_new_spawn] 42.portal_id = @e[tag=42.portal_new_spawn,tag=42.portal_spawner,limit=1] 42.portal_id
scoreboard players set @e[tag=42.portal_spawner,tag=42.portal_new_spawn] 42.portal_link -1
scoreboard players set @e[tag=42.portal_spawner,tag=42.portal_new_spawn] 42.portal_lvl -1
scoreboard players operation @e[tag=42.portal_spawner,tag=42.portal_new_spawn] 42.portal_x = @s 42.portal_skin
scoreboard players operation @e[tag=42.portal_spawner,tag=42.portal_new_spawn] 42.portal_y = @s 42.portal_link
execute if entity @s[tag=42.portal,tag=42.portal_a] run tag @e[tag=42.portal_new_spawn,tag=42.portal_spawner] add 42.portal_gun_arg_a
execute if entity @s[tag=42.portal,tag=!42.portal_a] run tag @e[tag=42.portal_new_spawn,tag=42.portal_spawner] add 42.portal_gun_arg_b
execute if entity @s[tag=42.portal] run function 42:portal/portal/fizzle
#execute as @e[tag=42.portal_new_spawn,tag=42.portal_spawner] at @s run function 42:portal/portal/spawner/power
tag @e remove 42.portal_new_spawn
#
#   ====scores====
#   portal_x    color of portal
#   portal_y    portal link num
#   portal_link     frequency of powerable
#   portal_lvl      only used to reset with lvl
#
#   =====tags=====
#   portal_spawner     main tick
#   portal_spawner_group    main + displays
#   portal_gun_arg_a    if portal type 0
#   portal_gun_arg_b    if portal type 1