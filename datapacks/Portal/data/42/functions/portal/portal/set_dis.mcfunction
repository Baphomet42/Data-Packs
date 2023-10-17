#match blocks #42:portal_surface, portal/replace_wall, portal/set_dis, portal/read_block
data modify entity @s block_state.Name set value quartz_block
execute if score @s 42.portal_skin matches 0 run data modify entity @s block_state.Name set value quartz_block
execute if score @s 42.portal_skin matches 1 run data modify entity @s block_state.Name set value smooth_quartz
execute if score @s 42.portal_skin matches 2 run data modify entity @s block_state.Name set value chiseled_quartz_block
execute if score @s 42.portal_skin matches 3 run data modify entity @s block_state.Name set value smooth_stone
execute if score @s 42.portal_skin matches 4 run data modify entity @s block_state.Name set value white_concrete
execute if score @s 42.portal_skin matches 5 run data modify entity @s block_state.Name set value calcite
execute if score @s 42.portal_skin matches 6 run data modify entity @s block_state.Name set value white_wool
execute if score @s 42.portal_skin matches 7 run data modify entity @s block_state.Name set value polished_diorite
execute if score @s 42.portal_skin matches 8 run data modify entity @s block_state.Name set value polished_andesite