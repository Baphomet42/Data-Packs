tag @e remove 42.tag.portal.new_spawn
execute if entity @s[tag=42.tag.portal.portal] run summon block_display ~ ~ ~ {Tags:["42.tag.portal.portal.spawner","42.tag.portal.portal.spawner.group","42.tag.portal.new_spawn","42.tag.portal.is_spawner"],CustomNameVisible:0b,CustomName:'"Portal Spawner"',block_state:{Name:iron_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.9375f,-.875f,-.125f],scale:[.125f,2.25f,.125f]},Passengers:[{id:block_display,Tags:["42.tag.portal.portal.spawner.group","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:iron_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.8125f,-.875f,-.125f],scale:[.125f,2.25f,.125f]}},{id:block_display,Tags:["42.tag.portal.portal.spawner.group","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:light_blue_concrete},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.890625f,-.8125f,-.015625f],scale:[.03125f,2.125f,.03125f]}},{id:block_display,Tags:["42.tag.portal.portal.spawner.group","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:light_blue_concrete},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.859375f,-.8125f,-.015625f],scale:[.03125f,2.125f,.03125f]}}]}
tp @e[tag=42.tag.portal.portal.spawner.group,tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner] ^ ^ ^.625
execute as @e[tag=42.tag.portal.portal.spawner.group,tag=42.tag.portal.new_spawn] run rotate @s ~ ~

scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner,limit=1] run function 42:portal/new_id
scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner,limit=1] 42.obj.portal.id
scoreboard players set @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.new_spawn] 42.obj.portal.link -1
scoreboard players set @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.new_spawn] 42.obj.portal.lvl -1
scoreboard players operation @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.new_spawn] 42.obj.portal.var.x = @s 42.obj.portal.skin
scoreboard players operation @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.new_spawn] 42.obj.portal.var.y = @s 42.obj.portal.link
execute if entity @s[tag=42.tag.portal.portal,tag=42.tag.portal.portal.a] run tag @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner] add 42.tag.portal.gun.arg_a
execute if entity @s[tag=42.tag.portal.portal,tag=!42.tag.portal.portal.a] run tag @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner] add 42.tag.portal.gun.arg_b
execute if entity @s[tag=42.tag.portal.portal] run function 42:portal/portal/fizzle
#execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner] at @s run function 42:portal/portal/spawner/power
tag @e remove 42.tag.portal.new_spawn

#   ====scores====
#   portal_x    color of portal
#   portal_y    portal link num
#   portal_link     frequency of powerable
#   portal_lvl      only used to reset with lvl

#   =====tags=====
#   portal_spawner     main tick
#   portal_spawner_group    main + displays
#   portal_gun_arg_a    if portal type 0
#   portal_gun_arg_b    if portal type 1