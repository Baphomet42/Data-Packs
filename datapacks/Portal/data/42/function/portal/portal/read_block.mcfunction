#match blocks: #42:portal_surface, portal/replace_wall, portal/read_block
scoreboard players set @s 42.portal_skin 0
#
execute if block ~ ~ ~ quartz_block run scoreboard players set @s 42.portal_skin 0
execute if block ~ ~ ~ smooth_quartz run scoreboard players set @s 42.portal_skin 1
execute if block ~ ~ ~ chiseled_quartz_block run scoreboard players set @s 42.portal_skin 2
execute if block ~ ~ ~ smooth_stone run scoreboard players set @s 42.portal_skin 3
execute if block ~ ~ ~ white_concrete run scoreboard players set @s 42.portal_skin 4
execute if block ~ ~ ~ calcite run scoreboard players set @s 42.portal_skin 5
execute if block ~ ~ ~ white_wool run scoreboard players set @s 42.portal_skin 6
execute if block ~ ~ ~ polished_diorite run scoreboard players set @s 42.portal_skin 7
execute if block ~ ~ ~ polished_andesite run scoreboard players set @s 42.portal_skin 8
execute if block ~ ~ ~ bone_block[axis=x] run scoreboard players set @s 42.portal_skin 9
execute if block ~ ~ ~ bone_block[axis=y] run scoreboard players set @s 42.portal_skin 10
execute if block ~ ~ ~ bone_block[axis=z] run scoreboard players set @s 42.portal_skin 11
#
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
execute if score @s 42.portal_skin matches 9..11 run data modify entity @s block_state.Name set value bone_block
execute if score @s 42.portal_skin matches 9 run data modify entity @s block_state.Properties set value {axis:x}
execute if score @s 42.portal_skin matches 10 run data modify entity @s block_state.Properties set value {axis:y}
execute if score @s 42.portal_skin matches 11 run data modify entity @s block_state.Properties set value {axis:z}