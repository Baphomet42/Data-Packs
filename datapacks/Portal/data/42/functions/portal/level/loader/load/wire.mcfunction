data remove storage 42:portal loader.temp_entity
data modify storage 42:portal loader.temp_entity set from storage 42:portal loader.temp_equipment.wire[0]
#
$execute positioned $(pos_x) $(pos_y) $(pos_z) run function 42:portal/wire/respawn with storage 42:portal loader.temp_entity
#
data remove storage 42:portal loader.temp_equipment.wire[0]
execute if data storage 42:portal loader.temp_equipment.wire[0] run function 42:portal/level/loader/load/wire with storage 42:portal loader.temp_equipment.wire[0]