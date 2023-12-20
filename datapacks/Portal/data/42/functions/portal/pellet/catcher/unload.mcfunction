data remove storage 42:portal loader.temp_entity
#
execute store result storage 42:portal loader.temp_entity.pos_x double 1 run data get entity @s Pos[0]
execute store result storage 42:portal loader.temp_entity.pos_y double 1 run data get entity @s Pos[1]
execute store result storage 42:portal loader.temp_entity.pos_z double 1 run data get entity @s Pos[2]
execute store result storage 42:portal loader.temp_entity.id int 1 run scoreboard players get @s 42.portal_id
execute store result storage 42:portal loader.temp_entity.lvl int 1 run scoreboard players get @s 42.portal_lvl
execute store result storage 42:portal loader.temp_entity.link int 1 run scoreboard players get @s 42.portal_link
execute store result storage 42:portal loader.temp_entity.z int 1 run scoreboard players get @s 42.portal_z
execute if entity @s[tag=42.portal_pellet_catcher_nolaser] run data modify storage 42:portal loader.temp_entity.tag_nolaser set value 1b
function 42:portal/pellet/catcher/fizzle
#
data modify entity @e[tag=42.portal_loader_current,limit=1] data.equipment.pellet_catcher append from storage 42:portal loader.temp_entity