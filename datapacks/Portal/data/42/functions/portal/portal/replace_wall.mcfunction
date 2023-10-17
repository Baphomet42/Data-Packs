#match blocks #42:portal_surface, portal/replace_wall, portal/set_dis, portal/read_block
setblock ~ ~ ~ quartz_block
execute if score @s 42.portal_skin matches 0 run setblock ~ ~ ~ quartz_block
execute if score @s 42.portal_skin matches 1 run setblock ~ ~ ~ smooth_quartz
execute if score @s 42.portal_skin matches 2 run setblock ~ ~ ~ chiseled_quartz_block
execute if score @s 42.portal_skin matches 3 run setblock ~ ~ ~ smooth_stone
execute if score @s 42.portal_skin matches 4 run setblock ~ ~ ~ white_concrete
execute if score @s 42.portal_skin matches 5 run setblock ~ ~ ~ calcite
execute if score @s 42.portal_skin matches 6 run setblock ~ ~ ~ white_wool
execute if score @s 42.portal_skin matches 7 run setblock ~ ~ ~ polished_diorite
execute if score @s 42.portal_skin matches 8 run setblock ~ ~ ~ polished_andesite