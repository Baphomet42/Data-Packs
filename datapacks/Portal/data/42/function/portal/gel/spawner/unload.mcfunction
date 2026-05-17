data remove storage 42:portal loader.temp_entity

execute store result storage 42:portal loader.temp_entity.pos_x double .001 run data get entity @s Pos[0] 1000
execute store result storage 42:portal loader.temp_entity.pos_y double .001 run data get entity @s Pos[1] 1000
execute store result storage 42:portal loader.temp_entity.pos_z double .001 run data get entity @s Pos[2] 1000
execute store result storage 42:portal loader.temp_entity.rotation_0 float .001 run data get entity @s Rotation[0] 1000
execute store result storage 42:portal loader.temp_entity.rotation_1 float .001 run data get entity @s Rotation[1] 1000
execute store result storage 42:portal loader.temp_entity.id int 1 run scoreboard players get @s 42.obj.portal.id
execute store result storage 42:portal loader.temp_entity.link int 1 run scoreboard players get @s 42.obj.portal.link
execute if entity @s[tag=42.tag.portal.gel.spawner.show] run data modify storage 42:portal loader.temp_entity.tag_show set value true
execute if entity @s[tag=42.tag.portal.tool.spawn.gel.blue] run data modify storage 42:portal loader.temp_entity.gel_mode set value "blue"
execute if entity @s[tag=42.tag.portal.tool.spawn.gel.orange] run data modify storage 42:portal loader.temp_entity.gel_mode set value "orange"
execute if entity @s[tag=42.tag.portal.tool.spawn.gel.white] run data modify storage 42:portal loader.temp_entity.gel_mode set value "white"
function 42:portal/gel/spawner/fizzle

scoreboard players add #42.var.portal.loader.equipment_count 42.obj.portal.temp 1
data modify storage 42:portal loader.temp_level.equipment.gel_spawner append from storage 42:portal loader.temp_entity