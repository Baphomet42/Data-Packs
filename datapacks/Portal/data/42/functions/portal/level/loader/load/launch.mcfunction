data remove storage 42:portal loader.temp_entity
data modify storage 42:portal loader.temp_entity set from storage 42:portal loader.temp_equipment.launch[0]
#
$execute positioned $(pos_x) $(pos_y) $(pos_z) run function 42:portal/level/loader/test_loaded
$execute positioned $(pos_x) $(pos_y) $(pos_z) unless data storage 42:portal loader.error run function 42:portal/launch/spawn
#
data remove storage 42:portal loader.temp_equipment.launch[0]
execute if data storage 42:portal loader.temp_equipment.launch[0] unless data storage 42:portal loader.error run function 42:portal/level/loader/load/launch with storage 42:portal loader.temp_equipment.launch[0]