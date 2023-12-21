scoreboard players operation 42.portal_loader_lvl 42.portal_temp = @s 42.portal_lvl
data remove storage 42:portal loader
execute store result storage 42:portal loader.lvl int 1 run scoreboard players get 42.portal_loader_lvl 42.portal_temp
function 42:portal/level/loader/storage/get_level with storage 42:portal loader
tag @e remove 42.portal_loader
tag @s add 42.portal_loader
#
execute if data storage 42:portal loader.temp_equipment.btn[0] run function 42:portal/level/loader/load/btn with storage 42:portal loader.temp_equipment.btn[0]
execute if data storage 42:portal loader.temp_equipment.pedestal[0] run function 42:portal/level/loader/load/pedestal with storage 42:portal loader.temp_equipment.pedestal[0]
execute if data storage 42:portal loader.temp_equipment.cube_spawner[0] run function 42:portal/level/loader/load/cube_spawner with storage 42:portal loader.temp_equipment.cube_spawner[0]
execute if data storage 42:portal loader.temp_equipment.door[0] run function 42:portal/level/loader/load/door with storage 42:portal loader.temp_equipment.door[0]
execute if data storage 42:portal loader.temp_equipment.dropper[0] run function 42:portal/level/loader/load/dropper with storage 42:portal loader.temp_equipment.dropper[0]
execute if data storage 42:portal loader.temp_equipment.elevator[0] run function 42:portal/level/loader/load/elevator with storage 42:portal loader.temp_equipment.elevator[0]
execute if data storage 42:portal loader.temp_equipment.grill[0] run function 42:portal/level/loader/load/grill with storage 42:portal loader.temp_equipment.grill[0]
execute if data storage 42:portal loader.temp_equipment.launch[0] run function 42:portal/level/loader/load/launch with storage 42:portal loader.temp_equipment.launch[0]
execute if data storage 42:portal loader.temp_equipment.pellet_emitter[0] run function 42:portal/level/loader/load/pellet_emitter with storage 42:portal loader.temp_equipment.pellet_emitter[0]
execute if data storage 42:portal loader.temp_equipment.pellet_catcher[0] run function 42:portal/level/loader/load/pellet_catcher with storage 42:portal loader.temp_equipment.pellet_catcher[0]
execute if data storage 42:portal loader.temp_equipment.pellet_spawner[0] run function 42:portal/level/loader/load/pellet_spawner with storage 42:portal loader.temp_equipment.pellet_spawner[0]
execute if data storage 42:portal loader.temp_equipment.portal_spawner[0] run function 42:portal/level/loader/load/portal_spawner with storage 42:portal loader.temp_equipment.portal_spawner[0]
execute if data storage 42:portal loader.temp_equipment.wire[0] run function 42:portal/level/loader/load/wire with storage 42:portal loader.temp_equipment.wire[0]
execute if data storage 42:portal loader.temp_equipment.zone[0] run function 42:portal/level/loader/load/zone with storage 42:portal loader.temp_equipment.zone[0]
#
tag @s remove 42.portal_loader
function 42:portal/level/loader/storage/delete_level with storage 42:portal loader
data remove storage 42:portal loader