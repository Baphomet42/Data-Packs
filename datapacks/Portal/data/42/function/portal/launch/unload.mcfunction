data remove storage 42:portal loader.temp_entity
#
execute store result storage 42:portal loader.temp_entity.pos_x double 1 run data get entity @s Pos[0]
execute store result storage 42:portal loader.temp_entity.pos_y double 1 run data get entity @s Pos[1]
execute store result storage 42:portal loader.temp_entity.pos_z double 1 run data get entity @s Pos[2]
execute store result storage 42:portal loader.temp_entity.rotation float 1 run data get entity @s Rotation[0]
execute store result storage 42:portal loader.temp_entity.id int 1 run scoreboard players get @s 42.portal_id
execute store result storage 42:portal loader.temp_entity.lvl int 1 run scoreboard players get @s 42.portal_lvl
execute store result storage 42:portal loader.temp_entity.x int 1 run scoreboard players get @s 42.portal_x
execute store result storage 42:portal loader.temp_entity.y int 1 run scoreboard players get @s 42.portal_y
execute store result storage 42:portal loader.temp_entity.z int 1 run scoreboard players get @s 42.portal_z
function 42:portal/launch/fizzle
#
data modify storage 42:portal loader.temp_equipment.launch append from storage 42:portal loader.temp_entity