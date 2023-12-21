data remove storage 42:portal loader.temp_entity
#
execute store result storage 42:portal loader.temp_entity.pos_x double 1 run data get entity @s Pos[0]
execute store result storage 42:portal loader.temp_entity.pos_y double 1 run data get entity @s Pos[1]
execute store result storage 42:portal loader.temp_entity.pos_z double 1 run data get entity @s Pos[2]
execute store result storage 42:portal loader.temp_entity.rotation_0 float 1 run data get entity @s Rotation[0]
execute store result storage 42:portal loader.temp_entity.rotation_1 float 1 run data get entity @s Rotation[1]
execute store result storage 42:portal loader.temp_entity.lvl int 1 run scoreboard players get @s 42.portal_lvl
execute store result storage 42:portal loader.temp_entity.link int 1 run scoreboard players get @s 42.portal_link
execute store result storage 42:portal loader.temp_entity.skin int 1 run scoreboard players get @s 42.portal_skin
execute store result storage 42:portal loader.temp_entity.z int 1 run scoreboard players get @s 42.portal_z
kill @s
#
data modify storage 42:portal loader.temp_equipment.wire append from storage 42:portal loader.temp_entity