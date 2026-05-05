execute unless score @s 42.obj.portal.var.x matches 1 run return fail

data remove storage 42:portal loader.temp_entity

execute store result storage 42:portal loader.temp_entity.pos_x double .001 run data get entity @s Pos[0] 1000
execute store result storage 42:portal loader.temp_entity.pos_y double .001 run data get entity @s Pos[1] 1000
execute store result storage 42:portal loader.temp_entity.pos_z double .001 run data get entity @s Pos[2] 1000
execute store result storage 42:portal loader.temp_entity.rotation_0 float .001 run data get entity @s Rotation[0] 1000
execute store result storage 42:portal loader.temp_entity.rotation_1 float .001 run data get entity @s Rotation[1] 1000
execute store result storage 42:portal loader.temp_entity.id int 1 run scoreboard players get @s 42.obj.portal.id
execute store result storage 42:portal loader.temp_entity.lvl int 1 run scoreboard players get @s 42.obj.portal.lvl
execute store result storage 42:portal loader.temp_entity.xrot1 int 1 run scoreboard players get @s 42.obj.portal.xrot1
execute store result storage 42:portal loader.temp_entity.xrot2 int 1 run scoreboard players get @s 42.obj.portal.xrot2
execute store result storage 42:portal loader.temp_entity.yrot1 int 1 run scoreboard players get @s 42.obj.portal.yrot1
execute store result storage 42:portal loader.temp_entity.yrot2 int 1 run scoreboard players get @s 42.obj.portal.yrot2
execute store result storage 42:portal loader.temp_entity.var_x int 1 run scoreboard players get @s 42.obj.portal.var.x
execute store result storage 42:portal loader.temp_entity.var_y int 1 run scoreboard players get @s 42.obj.portal.var.y
execute if entity @s[tag=42.tag.portal.zone.show] run data modify storage 42:portal loader.temp_entity.tag_show set value true
execute if entity @s[tag=42.tag.portal.zone.has_spawn] run data modify storage 42:portal loader.temp_entity.tag_has_spawn set value true
execute if entity @s[tag=42.tag.portal.zone.has_fizzle] run data modify storage 42:portal loader.temp_entity.tag_has_fizzle set value true
execute if entity @s[tag=42.tag.portal.zone.grill] run data modify storage 42:portal loader.temp_entity.tag_grill set value true
execute if entity @s[tag=42.tag.portal.zone.checkpoint] run data modify storage 42:portal loader.temp_entity.tag_checkpoint set value true
function 42:portal/zone/fizzle

data modify storage 42:portal loader.temp_equipment.zone append from storage 42:portal loader.temp_entity