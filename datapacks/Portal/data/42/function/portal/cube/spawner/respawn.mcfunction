tag @e remove 42.portal_new_spawn

execute if data storage 42:portal loader.temp_entity.tag_spawn_cube1 run summon block_display ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_cube_spawner","42.portal_cube_spawner_group","42.portal_is_spawner"],CustomNameVisible:0b,CustomName:'{"text":"Cube Spawner"}',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.45f,.05f,-.45f],scale:[.9f,.9f,.9f]},Passengers:[\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_cube_spawner_lbl","42.portal_cube_spawner_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"Cube Spawner"}',see_through:true,billboard:vertical,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.125f,0f],scale:[1f,1f,1f]}}]}
execute if data storage 42:portal loader.temp_entity.tag_spawn_cube2 run summon block_display ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_cube_spawner","42.portal_cube_spawner_group","42.portal_is_spawner"],CustomNameVisible:0b,CustomName:'{"text":"Cube Spawner"}',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.45f,.05f,-.45f],scale:[.9f,.9f,.9f]},Passengers:[\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_cube_spawner_lbl","42.portal_cube_spawner_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"Cube Spawner"}',see_through:true,billboard:vertical,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.125f,0f],scale:[1f,1f,1f]}}]}
execute if data storage 42:portal loader.temp_entity.tag_spawn_cube3 run summon block_display ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_cube_spawner","42.portal_cube_spawner_group","42.portal_is_spawner"],CustomNameVisible:0b,CustomName:'{"text":"Cube Spawner"}',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.45f,.05f,-.45f],scale:[.9f,.9f,.9f]},Passengers:[\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_cube_spawner_lbl","42.portal_cube_spawner_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"Cube Spawner"}',see_through:true,billboard:vertical,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.125f,0f],scale:[1f,1f,1f]}}]}

execute if data storage 42:portal loader.temp_entity.tag_spawn_turret run summon block_display ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_cube_spawner","42.portal_cube_spawner_group","42.portal_spawn_turret","42.portal_is_spawner"],CustomNameVisible:0b,CustomName:'{"text":"Turret Spawner"}',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.45f,.05f,-.45f],scale:[.9f,1.4f,.9f]},Passengers:[\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_cube_spawner_lbl","42.portal_cube_spawner_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"Turret Spawner"}',see_through:true,billboard:vertical,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.125f,0f],scale:[1f,1f,1f]}}]}

execute if data storage 42:portal loader.temp_entity.tag_spawn_radio run summon block_display ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_cube_spawner","42.portal_cube_spawner_group","42.portal_spawn_radio","42.portal_is_spawner"],CustomNameVisible:0b,CustomName:'{"text":"Radio Spawner"}',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.2f,.05f,-.2f],scale:[.4f,.4f,.4f]},Passengers:[\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_cube_spawner_lbl","42.portal_cube_spawner_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"Radio Spawner"}',see_through:true,billboard:vertical,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.125f,0f],scale:[1f,1f,1f]}}]}

scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
$scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] 42.portal_lvl $(lvl)
$scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] 42.portal_link $(link)
$scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] 42.portal_skin $(skin)
$scoreboard players set @e[tag=42.portal_new_spawn] 42.portal_id $(id)
$execute as @e[tag=42.portal_new_spawn] at @s run tp @s ~.01 ~ ~.01 $(rotation_0) $(rotation_1)

execute if data storage 42:portal loader.temp_entity.tag_spawn_cube1 run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_spawn_cube1
execute if data storage 42:portal loader.temp_entity.tag_spawn_cube1old run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_spawn_cube1old
execute if data storage 42:portal loader.temp_entity.tag_spawn_cube2 run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_spawn_cube2
execute if data storage 42:portal loader.temp_entity.tag_spawn_cube3 run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_spawn_cube3

execute if data storage 42:portal loader.temp_entity.tag_spawn_turret run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_spawn_turret
execute if data storage 42:portal loader.temp_entity.tag_turret_off run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_cube_spawner_turret_off
execute if data storage 42:portal loader.temp_entity.tag_turret_always_on run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_cube_spawner_turret_always_on
execute if data storage 42:portal loader.temp_entity.tag_turret_nofind run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_cube_spawner_turret_nofind
execute if data storage 42:portal loader.temp_entity.tag_turret_oracle run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_cube_spawner_turret_oracle

execute if data storage 42:portal loader.temp_entity.tag_spawn_radio run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_spawn_radio

execute if data storage 42:portal loader.temp_entity.tag_spawner_show as @e[tag=42.portal_cube_spawner,tag=42.portal_new_spawn] at @s run function 42:portal/cube/spawner/show
execute unless data storage 42:portal loader.temp_entity.tag_spawner_show as @e[tag=42.portal_cube_spawner,tag=42.portal_new_spawn] at @s run function 42:portal/cube/spawner/hide
tag @e remove 42.portal_new_spawn