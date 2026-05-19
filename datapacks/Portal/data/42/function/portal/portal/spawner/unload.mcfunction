data remove storage 42:portal loader.temp_entity

execute store result storage 42:portal loader.temp_entity.pos_x double .001 run data get entity @s Pos[0] 1000
execute store result storage 42:portal loader.temp_entity.pos_y double .001 run data get entity @s Pos[1] 1000
execute store result storage 42:portal loader.temp_entity.pos_z double .001 run data get entity @s Pos[2] 1000
execute store result storage 42:portal loader.temp_entity.rotation_0 float 1 run data get entity @s Rotation[0]
execute store result storage 42:portal loader.temp_entity.rotation_1 float 1 run data get entity @s Rotation[1]
execute store result storage 42:portal loader.temp_entity.id int 1 run scoreboard players get @s 42.obj.portal.id
execute store result storage 42:portal loader.temp_entity.link int 1 run scoreboard players get @s 42.obj.portal.link
execute store result storage 42:portal loader.temp_entity.x int 1 run scoreboard players get @s 42.obj.portal.var.x
execute store result storage 42:portal loader.temp_entity.y int 1 run scoreboard players get @s 42.obj.portal.var.y
execute store result storage 42:portal loader.temp_entity.cool int 1 run scoreboard players get @s 42.obj.portal.cool
execute store result storage 42:portal loader.temp_entity.u int 1 run scoreboard players get @s 42.obj.portal.var.u
execute if entity @s[tag=42.tag.portal.gun.arg_b] run data modify storage 42:portal loader.temp_entity.tag_gun_arg_b set value true
function 42:portal/portal/spawner/fizzle

scoreboard players add #42.var.portal.loader.equipment_count 42.obj.portal.temp 1
data modify storage 42:portal loader.temp_level.equipment.portal_spawner append from storage 42:portal loader.temp_entity