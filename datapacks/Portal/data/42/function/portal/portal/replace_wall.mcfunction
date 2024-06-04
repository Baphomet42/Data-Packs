#match blocks: #42:portal_surface, portal/replace_wall, portal/read_block
execute if score @s 42.portal_skin matches 0 run fill ~ ~ ~ ~ ~ ~ quartz_block replace #42:portal_blocks
execute if score @s 42.portal_skin matches 1 run fill ~ ~ ~ ~ ~ ~ smooth_quartz replace #42:portal_blocks
execute if score @s 42.portal_skin matches 2 run fill ~ ~ ~ ~ ~ ~ chiseled_quartz_block replace #42:portal_blocks
execute if score @s 42.portal_skin matches 3 run fill ~ ~ ~ ~ ~ ~ smooth_stone replace #42:portal_blocks
execute if score @s 42.portal_skin matches 4 run fill ~ ~ ~ ~ ~ ~ white_concrete replace #42:portal_blocks
execute if score @s 42.portal_skin matches 5 run fill ~ ~ ~ ~ ~ ~ calcite replace #42:portal_blocks
execute if score @s 42.portal_skin matches 6 run fill ~ ~ ~ ~ ~ ~ white_wool replace #42:portal_blocks
execute if score @s 42.portal_skin matches 7 run fill ~ ~ ~ ~ ~ ~ polished_diorite replace #42:portal_blocks
execute if score @s 42.portal_skin matches 8 run fill ~ ~ ~ ~ ~ ~ polished_andesite replace #42:portal_blocks
execute if score @s 42.portal_skin matches 9 run fill ~ ~ ~ ~ ~ ~ bone_block[axis=x] replace #42:portal_blocks
execute if score @s 42.portal_skin matches 10 run fill ~ ~ ~ ~ ~ ~ bone_block[axis=y] replace #42:portal_blocks
execute if score @s 42.portal_skin matches 11 run fill ~ ~ ~ ~ ~ ~ bone_block[axis=z] replace #42:portal_blocks
fill ~ ~ ~ ~ ~ ~ quartz_block replace #42:portal_blocks