data remove storage 42:portal loader.temp_entity

execute store result storage 42:portal loader.temp_entity.pos_x double 1 run data get entity @s Pos[0]
execute store result storage 42:portal loader.temp_entity.pos_y double 1 run data get entity @s Pos[1]
execute store result storage 42:portal loader.temp_entity.pos_z double 1 run data get entity @s Pos[2]
execute store result storage 42:portal loader.temp_entity.rotation float 1 run data get entity @s Rotation[0]
execute store result storage 42:portal loader.temp_entity.id int 1 run scoreboard players get @s 42.obj.portal.id
execute store result storage 42:portal loader.temp_entity.x int 1 run scoreboard players get @s 42.obj.portal.var.x
execute store result storage 42:portal loader.temp_entity.y int 1 run scoreboard players get @s 42.obj.portal.var.y
execute store result storage 42:portal loader.temp_entity.z int 1 run scoreboard players get @s 42.obj.portal.var.z
function 42:portal/faith_plate/fizzle

scoreboard players add #42.var.portal.loader.equipment_count 42.obj.portal.temp 1
data modify storage 42:portal loader.temp_level.equipment.faith_plate append from storage 42:portal loader.temp_entity