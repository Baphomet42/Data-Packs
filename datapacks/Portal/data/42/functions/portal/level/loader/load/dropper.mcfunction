data remove storage 42:portal loader.temp_entity
data modify storage 42:portal loader.temp_entity set from storage 42:portal loader.temp_equipment.dropper[0]
#
$execute positioned $(pos_x) $(pos_y) $(pos_z) run function 42:portal/dropper/spawn2
#
data remove storage 42:portal loader.temp_equipment.dropper[0]
execute if data storage 42:portal loader.temp_equipment.dropper[0] run function 42:portal/level/loader/load/dropper with storage 42:portal loader.temp_equipment.dropper[0]