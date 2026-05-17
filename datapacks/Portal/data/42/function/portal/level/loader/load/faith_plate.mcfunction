data remove storage 42:portal loader.temp_entity
data modify storage 42:portal loader.temp_entity set from storage 42:portal loader.temp_level.equipment.faith_plate[-1]

$execute positioned $(pos_x) $(pos_y) $(pos_z) run function 42:portal/level/loader/test_loaded
$execute positioned $(pos_x) $(pos_y) $(pos_z) unless data storage 42:portal loader.error run function 42:portal/faith_plate/spawn

execute unless data storage 42:portal loader.error run scoreboard players remove #42.var.portal.loader.equipment_count 42.obj.portal.temp 1
execute unless data storage 42:portal loader.error run data remove storage 42:portal loader.temp_level.equipment.faith_plate[-1]
execute unless data storage 42:portal loader.error if data storage 42:portal loader.temp_level.equipment.faith_plate[-1] run function 42:portal/level/loader/load/faith_plate with storage 42:portal loader.temp_level.equipment.faith_plate[-1]