data remove storage 42:portal loader.temp_entity
data modify storage 42:portal loader.temp_entity set from entity @s data.equipment.grill[0]
#
$execute positioned $(pos_x) $(pos_y) $(pos_z) run function 42:portal/grill/spawn2
#
data remove entity @s data.equipment.grill[0]
execute if data entity @s data.equipment.grill[0] run function 42:portal/level/loader/load/grill with entity @s data.equipment.grill[0]