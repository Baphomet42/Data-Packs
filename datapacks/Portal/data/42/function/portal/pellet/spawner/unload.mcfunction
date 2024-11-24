data remove storage 42:portal loader.temp_entity

execute store result storage 42:portal loader.temp_entity.pos_x double .001 run data get entity @s Pos[0] 1000
execute store result storage 42:portal loader.temp_entity.pos_y double .001 run data get entity @s Pos[1] 1000
execute store result storage 42:portal loader.temp_entity.pos_z double .001 run data get entity @s Pos[2] 1000
execute store result storage 42:portal loader.temp_entity.rotation_0 float .001 run data get entity @s Rotation[0] 1000
execute store result storage 42:portal loader.temp_entity.rotation_1 float .001 run data get entity @s Rotation[1] 1000
execute store result storage 42:portal loader.temp_entity.id int 1 run scoreboard players get @s 42.obj.portal.id
execute store result storage 42:portal loader.temp_entity.lvl int 1 run scoreboard players get @s 42.obj.portal.lvl
execute store result storage 42:portal loader.temp_entity.link int 1 run scoreboard players get @s 42.obj.portal.link
execute if entity @s[tag=42.tag.portal.pellet.spawner.show] run data modify storage 42:portal loader.temp_entity.tag_show set value 1b
function 42:portal/pellet/spawner/fizzle

data modify storage 42:portal loader.temp_equipment.pellet_spawner append from storage 42:portal loader.temp_entity