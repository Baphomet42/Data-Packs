data remove storage 42:portal loader.temp_entity
#
tp @s ~-.001 ~-.001 ~-.001
execute store result storage 42:portal loader.temp_entity.pos_x double .001 run data get entity @s Pos[0] 1000
execute store result storage 42:portal loader.temp_entity.pos_y double .001 run data get entity @s Pos[1] 1000
execute store result storage 42:portal loader.temp_entity.pos_z double .001 run data get entity @s Pos[2] 1000
execute store result storage 42:portal loader.temp_entity.rotation_0 float 1 run data get entity @s Rotation[0]
execute store result storage 42:portal loader.temp_entity.rotation_1 float 1 run data get entity @s Rotation[1]
execute store result storage 42:portal loader.temp_entity.id int 1 run scoreboard players get @s 42.portal_id
execute store result storage 42:portal loader.temp_entity.lvl int 1 run scoreboard players get @s 42.portal_lvl
execute store result storage 42:portal loader.temp_entity.link int 1 run scoreboard players get @s 42.portal_link
execute store result storage 42:portal loader.temp_entity.x int 1 run scoreboard players get @s 42.portal_x
execute store result storage 42:portal loader.temp_entity.y int 1 run scoreboard players get @s 42.portal_y
execute if entity @s[tag=42.portal_gun_arg_b] run data modify storage 42:portal loader.temp_entity.tag_gun_arg_b set value 1b
function 42:portal/portal/spawner/fizzle
#
data modify entity @e[tag=42.portal_loader_current,limit=1] data.equipment.portal_spawner append from storage 42:portal loader.temp_entity