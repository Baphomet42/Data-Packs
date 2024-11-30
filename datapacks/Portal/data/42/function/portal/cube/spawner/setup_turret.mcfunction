function 42:portal/tag_id
tag @e remove 42.tag.portal.new_spawn
summon block_display ~ ~ ~ {Tags:["42.tag.portal.new_spawn","42.tag.portal.cube.spawner","42.tag.portal.cube.spawner.group","42.tag.portal.tool.spawn.turret","42.tag.portal.is_spawner"],CustomNameVisible:0b,CustomName:'"Turret Spawner"',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.45f,.05f,-.45f],scale:[.9f,1.4f,.9f]},Passengers:[\
    {id:text_display,Tags:["42.tag.portal.new_spawn","42.tag.portal.cube.spawner.lbl","42.tag.portal.cube.spawner.group"],CustomNameVisible:0b,CustomName:'"42portal"',text:'"Turret Spawner"',see_through:true,alignment:center,billboard:vertical,view_range:0f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.5f,0f],scale:[1f,1f,1f]}}]}
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.cube.spawner] 42.obj.portal.lvl -1
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.cube.spawner] 42.obj.portal.link -1

scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @s 42.obj.portal.id
execute at @s rotated as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.eye,limit=1] as @e[tag=42.tag.portal.new_spawn] run rotate @s ~ ~
execute if score @s 42.obj.portal.lvl matches 1.. run scoreboard players operation @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.cube.spawner] 42.obj.portal.lvl = @s 42.obj.portal.lvl
scoreboard players operation @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.cube.spawner] 42.obj.portal.skin = @s 42.obj.portal.skin
execute if entity @s[tag=42.tag.portal.turret.off] run tag @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.cube.spawner] add 42.tag.portal.cube.spawner.turret.off
execute if entity @s[tag=42.tag.portal.turret.always_on] run tag @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.cube.spawner] add 42.tag.portal.cube.spawner.turret.always_on
execute if entity @s[tag=42.tag.portal.turret.nofind] run tag @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.cube.spawner] add 42.tag.portal.cube.spawner.turret.nofind
execute if entity @s[tag=42.tag.portal.turret.oracle] run tag @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.cube.spawner] add 42.tag.portal.cube.spawner.turret.oracle

execute as @e[tag=42.tag.portal.cube.spawner,tag=42.tag.portal.new_spawn] at @s run function 42:portal/cube/spawner/show
tag @e remove 42.tag.portal.new_spawn
tag @e remove 42.tag.portal.id
function 42:portal/cube/fizzle

#   ====scores====
#   portal_lvl

#   =====tags=====
#   portal_cube_spawner     main tick
#   portal_cube_spawner_group   all spawner elements to be fizzled together
#   portal_cube_spawner_show    if the spawner can be seen (and fizzled with the fizzler tool)