function 42:portal/tag_id
tag @e remove 42.portal_new_spawn
summon block_display ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_cube_spawner","42.portal_cube_spawner_group","42.portal_spawn_radio","42.portal_is_spawner"],CustomNameVisible:0b,CustomName:'{"text":"Radio Spawner"}',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.2f,.05f,-.2f],scale:[.4f,.4f,.4f]},Passengers:[\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_cube_spawner_lbl","42.portal_cube_spawner_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"Radio Spawner"}',see_through:true,billboard:vertical,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.125f,0f],scale:[1f,1f,1f]}}]}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] 42.portal_lvl -1
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] 42.portal_link -1
#
scoreboard players operation @e[tag=42.portal_new_spawn] 42.portal_id = @s 42.portal_id
execute at @s rotated as @e[tag=42.portal_id,tag=42.portal_cube_dis,limit=1] run tp @e[tag=42.portal_new_spawn] ~ ~ ~ ~ ~
execute if score @s 42.portal_lvl matches 1.. run scoreboard players operation @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] 42.portal_lvl = @s 42.portal_lvl
#
execute as @e[tag=42.portal_cube_spawner,tag=42.portal_new_spawn] at @s run function 42:portal/cube/spawner/show
tag @e remove 42.portal_new_spawn
tag @e remove 42.portal_id
function 42:portal/cube/fizzle
#
#   ====scores====
#   portal_lvl
#
#   =====tags=====
#   portal_cube_spawner     main tick
#   portal_cube_spawner_group   all spawner elements to be fizzled together
#   portal_cube_spawner_show    if the spawner can be seen (and fizzled with the fizzler tool)