tag @e remove 42.portal_new_spawn
summon block_display ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_pellet_spawner","42.portal_pellet_spawner_group","42.portal_spawn_super_pellet","42.portal_is_spawner"],CustomNameVisible:0b,CustomName:'{"text":"Super Pellet Spawner"}',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,-.25f,-.25f],scale:[.5f,.5f,.5f]},Passengers:[\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_pellet_spawner_lbl","42.portal_pellet_spawner_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"Super Pellet Spawner"}',see_through:true,billboard:vertical,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.125f,0f],scale:[1f,1f,1f]}}]}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
$scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_spawner] 42.portal_lvl $(lvl)
$scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_spawner] 42.portal_link $(link)
$scoreboard players set @e[tag=42.portal_new_spawn] 42.portal_id $(id)
$execute as @e[tag=42.portal_new_spawn] at @s run tp @s ~.01 ~ ~.01 $(rotation_0) $(rotation_1)

execute if data storage 42:portal loader.temp_entity.tag_show as @e[tag=42.portal_pellet_spawner,tag=42.portal_new_spawn] at @s run function 42:portal/pellet/spawner/show
execute unless data storage 42:portal loader.temp_entity.tag_show as @e[tag=42.portal_pellet_spawner,tag=42.portal_new_spawn] at @s run function 42:portal/pellet/spawner/hide
tag @e remove 42.portal_new_spawn