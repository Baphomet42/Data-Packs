data remove storage 42:portal loader.temp_entity
data modify storage 42:portal loader.temp_entity set from entity @s data.equipment.pedestal[0]
#
$execute positioned $(pos_x) $(pos_y) $(pos_z) run function 42:portal/button/spawn_pedestal2
#
data remove entity @s data.equipment.pedestal[0]
execute if data entity @s data.equipment.pedestal[0] run function 42:portal/level/loader/load/pedestal with entity @s data.equipment.pedestal[0]