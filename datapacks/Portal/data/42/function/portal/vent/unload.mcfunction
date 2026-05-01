data remove storage 42:portal loader.temp_entity

execute store result storage 42:portal loader.temp_entity.pos_x double 1 run data get entity @s Pos[0]
execute store result storage 42:portal loader.temp_entity.pos_y double 1 run data get entity @s Pos[1]
execute store result storage 42:portal loader.temp_entity.pos_z double 1 run data get entity @s Pos[2]
execute store result storage 42:portal loader.temp_entity.id int 1 run scoreboard players get @s 42.obj.portal.id
execute store result storage 42:portal loader.temp_entity.lvl int 1 run scoreboard players get @s 42.obj.portal.lvl
execute store result storage 42:portal loader.temp_entity.link int 1 run scoreboard players get @s 42.obj.portal.link
execute store result storage 42:portal loader.temp_entity.skin int 1 run scoreboard players get @s 42.obj.portal.skin
execute store result storage 42:portal loader.temp_entity.x int 1 run scoreboard players get @s 42.obj.portal.var.x
function 42:portal/vent/fizzle

data modify storage 42:portal loader.temp_equipment.vent append from storage 42:portal loader.temp_entity