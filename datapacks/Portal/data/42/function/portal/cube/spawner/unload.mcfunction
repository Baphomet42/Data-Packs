data remove storage 42:portal loader.temp_entity

execute store result storage 42:portal loader.temp_entity.pos_x double .001 run data get entity @s Pos[0] 1000
execute store result storage 42:portal loader.temp_entity.pos_y double .001 run data get entity @s Pos[1] 1000
execute store result storage 42:portal loader.temp_entity.pos_z double .001 run data get entity @s Pos[2] 1000
execute store result storage 42:portal loader.temp_entity.rotation_0 float .001 run data get entity @s Rotation[0] 1000
execute store result storage 42:portal loader.temp_entity.rotation_1 float .001 run data get entity @s Rotation[1] 1000
execute store result storage 42:portal loader.temp_entity.id int 1 run scoreboard players get @s 42.obj.portal.id
execute store result storage 42:portal loader.temp_entity.lvl int 1 run scoreboard players get @s 42.obj.portal.lvl
execute store result storage 42:portal loader.temp_entity.link int 1 run scoreboard players get @s 42.obj.portal.link
data modify storage 42:portal loader.temp_entity.skin set value 0
execute store result storage 42:portal loader.temp_entity.skin int 1 run scoreboard players get @s 42.obj.portal.skin
execute if entity @s[tag=42.tag.portal.cube.spawner.show] run data modify storage 42:portal loader.temp_entity.tag_spawner_show set value 1b

execute if entity @s[tag=42.tag.portal.tool.spawn.cube.storage] run data modify storage 42:portal loader.temp_entity.tag_spawn_cube1 set value 1b
execute if entity @s[tag=42.tag.portal.tool.spawn.cube.old] run data modify storage 42:portal loader.temp_entity.tag_spawn_cube1old set value 1b
execute if entity @s[tag=42.tag.portal.tool.spawn.cube.companion] run data modify storage 42:portal loader.temp_entity.tag_spawn_cube2 set value 1b
execute if entity @s[tag=42.tag.portal.tool.spawn.cube.laser] run data modify storage 42:portal loader.temp_entity.tag_spawn_cube3 set value 1b

execute if entity @s[tag=42.tag.portal.tool.spawn.turret] run data modify storage 42:portal loader.temp_entity.tag_spawn_turret set value 1b
execute if entity @s[tag=42.tag.portal.cube.spawner.turret.off] run data modify storage 42:portal loader.temp_entity.tag_turret_off set value 1b
execute if entity @s[tag=42.tag.portal.cube.spawner.turret.always_on] run data modify storage 42:portal loader.temp_entity.tag_turret_always_on set value 1b
execute if entity @s[tag=42.tag.portal.cube.spawner.turret.nofind] run data modify storage 42:portal loader.temp_entity.tag_turret_nofind set value 1b
execute if entity @s[tag=42.tag.portal.cube.spawner.turret.oracle] run data modify storage 42:portal loader.temp_entity.tag_turret_oracle set value 1b

execute if entity @s[tag=42.tag.portal.tool.spawn.radio] run data modify storage 42:portal loader.temp_entity.tag_spawn_radio set value 1b

function 42:portal/cube/spawner/fizzle

data modify storage 42:portal loader.temp_equipment.cube_spawner append from storage 42:portal loader.temp_entity