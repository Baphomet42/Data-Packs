data remove storage 42:portal loader.temp_entity
#
tp @s ~-.01 ~ ~-.01
execute store result storage 42:portal loader.temp_entity.pos_x double .001 run data get entity @s Pos[0] 1000
execute store result storage 42:portal loader.temp_entity.pos_y double .001 run data get entity @s Pos[1] 1000
execute store result storage 42:portal loader.temp_entity.pos_z double .001 run data get entity @s Pos[2] 1000
execute store result storage 42:portal loader.temp_entity.rotation_0 float .001 run data get entity @s Rotation[0] 1000
execute store result storage 42:portal loader.temp_entity.rotation_1 float .001 run data get entity @s Rotation[1] 1000
execute store result storage 42:portal loader.temp_entity.id int 1 run scoreboard players get @s 42.portal_id
execute store result storage 42:portal loader.temp_entity.lvl int 1 run scoreboard players get @s 42.portal_lvl
execute store result storage 42:portal loader.temp_entity.link int 1 run scoreboard players get @s 42.portal_link
data modify storage 42:portal loader.temp_entity.skin set value 0
execute store result storage 42:portal loader.temp_entity.skin int 1 run scoreboard players get @s 42.portal_skin
execute if entity @s[tag=42.portal_cube_spawner_show] run data modify storage 42:portal loader.temp_entity.tag_spawner_show set value 1b
#
execute if entity @s[tag=42.portal_spawn_cube1] run data modify storage 42:portal loader.temp_entity.tag_spawn_cube1 set value 1b
execute if entity @s[tag=42.portal_spawn_cube1old] run data modify storage 42:portal loader.temp_entity.tag_spawn_cube1old set value 1b
execute if entity @s[tag=42.portal_spawn_cube2] run data modify storage 42:portal loader.temp_entity.tag_spawn_cube2 set value 1b
execute if entity @s[tag=42.portal_spawn_cube3] run data modify storage 42:portal loader.temp_entity.tag_spawn_cube3 set value 1b
#
execute if entity @s[tag=42.portal_spawn_turret] run data modify storage 42:portal loader.temp_entity.tag_spawn_turret set value 1b
execute if entity @s[tag=42.portal_cube_spawner_turret_off] run data modify storage 42:portal loader.temp_entity.tag_turret_off set value 1b
execute if entity @s[tag=42.portal_cube_spawner_turret_always_on] run data modify storage 42:portal loader.temp_entity.tag_turret_always_on set value 1b
execute if entity @s[tag=42.portal_cube_spawner_turret_nofind] run data modify storage 42:portal loader.temp_entity.tag_turret_nofind set value 1b
execute if entity @s[tag=42.portal_cube_spawner_turret_oracle] run data modify storage 42:portal loader.temp_entity.tag_turret_oracle set value 1b
#
execute if entity @s[tag=42.portal_spawn_radio] run data modify storage 42:portal loader.temp_entity.tag_spawn_radio set value 1b
#
function 42:portal/cube/spawner/fizzle
#
data modify storage 42:portal loader.temp_equipment.cube_spawner append from storage 42:portal loader.temp_entity