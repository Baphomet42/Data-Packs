function 42:portal/tag_id
tag @e remove 42.portal_new_spawn
summon block_display ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_cube_spawner","42.portal_cube_spawner_group","42.portal_is_spawner"],CustomNameVisible:0b,CustomName:'{"text":"Cube Spawner"}',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.45f,.05f,-.45f],scale:[.9f,.9f,.9f]},Passengers:[\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_cube_spawner_lbl","42.portal_cube_spawner_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"Cube Spawner"}',see_through:true,billboard:vertical,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.125f,0f],scale:[1f,1f,1f]}}]}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] 42.portal_lvl -1
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] 42.portal_link -1

execute if entity @s[tag=42.portal_cube1] run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_spawn_cube1
execute if entity @s[tag=42.portal_cube1] if score @s 42.portal_skin matches 1 run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_spawn_cube1old
execute if entity @s[tag=42.portal_cube2] run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_spawn_cube2
execute if entity @s[tag=42.portal_laser_cube] run tag @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] add 42.portal_spawn_cube3

scoreboard players operation @e[tag=42.portal_new_spawn] 42.portal_id = @s 42.portal_id
execute if entity @s[tag=42.portal_laser_cube] at @s rotated as @e[tag=42.portal_id,tag=42.portal_cube_dis,limit=1] run tp @e[tag=42.portal_new_spawn] ~ ~ ~ ~ ~
execute if score @s 42.portal_lvl matches 1.. run scoreboard players operation @e[tag=42.portal_new_spawn,tag=42.portal_cube_spawner] 42.portal_lvl = @s 42.portal_lvl

execute as @e[tag=42.portal_cube_spawner,tag=42.portal_new_spawn] at @s run function 42:portal/cube/spawner/show
tag @e remove 42.portal_new_spawn
tag @e remove 42.portal_id
function 42:portal/cube/fizzle

#   ====scores====
#   portal_lvl

#   =====tags=====
#   portal_cube_spawner     main tick
#   portal_cube_spawner_group   all spawner elements to be fizzled together
#   portal_cube_spawner_show    if the spawner can be seen (and fizzled with the fizzler tool)